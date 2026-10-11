variable "vpc_ipam_pool_cidrs" {
  description = <<EOT
Map of vpc_ipam_pool_cidrs, attributes below
Required:
    - ipam_pool_id
Optional:
    - cidr
    - netmask_length
    - region
    - cidr_authorization_context (block):
        - message (optional)
        - signature (optional)
EOT

  type = map(object({
    ipam_pool_id   = string
    cidr           = optional(string)
    netmask_length = optional(number)
    region         = optional(string)
    cidr_authorization_context = optional(object({
      message   = optional(string)
      signature = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vpc_ipam_pool_cidrs : (
        v.netmask_length == null || (v.netmask_length >= 0 && v.netmask_length <= 128)
      )
    ])
    error_message = "must be between 0 and 128"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

