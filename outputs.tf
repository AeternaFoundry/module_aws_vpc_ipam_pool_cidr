output "vpc_ipam_pool_cidrs_id" {
  description = "Map of id values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_ipam_pool_cidrs_cidr" {
  description = "Map of cidr values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.cidr if v.cidr != null && length(v.cidr) > 0 }
}
output "vpc_ipam_pool_cidrs_cidr_authorization_context" {
  description = "Map of cidr_authorization_context values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => one(v.cidr_authorization_context) if v.cidr_authorization_context != null && length(v.cidr_authorization_context) > 0 }
}
output "vpc_ipam_pool_cidrs_ipam_pool_cidr_id" {
  description = "Map of ipam_pool_cidr_id values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.ipam_pool_cidr_id if v.ipam_pool_cidr_id != null && length(v.ipam_pool_cidr_id) > 0 }
}
output "vpc_ipam_pool_cidrs_ipam_pool_id" {
  description = "Map of ipam_pool_id values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.ipam_pool_id if v.ipam_pool_id != null && length(v.ipam_pool_id) > 0 }
}
output "vpc_ipam_pool_cidrs_netmask_length" {
  description = "Map of netmask_length values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.netmask_length if v.netmask_length != null }
}
output "vpc_ipam_pool_cidrs_region" {
  description = "Map of region values across all vpc_ipam_pool_cidrs, keyed the same as var.vpc_ipam_pool_cidrs"
  value       = { for k, v in aws_vpc_ipam_pool_cidr.vpc_ipam_pool_cidrs : k => v.region if v.region != null && length(v.region) > 0 }
}

