output "role_name" {
  description = "Name of the IAM role"
  value       = module.imagebuilder_instance_profile.role_name
}

output "role_arn" {
  description = "ARN of the IAM role"
  value       = module.imagebuilder_instance_profile.role_arn
}

output "instance_profile_name" {
  description = "Name of the Instance Profile"
  value       = module.imagebuilder_instance_profile.instance_profile_name
}

output "instance_profile_arn" {
  description = "ARN of the Instance Profile"
  value       = module.imagebuilder_instance_profile.instance_profile_arn
}
