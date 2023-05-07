variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "ImageBuilder-Role"
  nullable    = false
}

variable "role_path" {
  description = "The path of the IAM role"
  type        = string
  default     = "/"
  nullable    = false
}

variable "instance_profile_path" {
  description = "The path of the Instance Profile"
  type        = string
  default     = "/"
  nullable    = false
}

variable "tags" {
  description = "Tags to set on the resources"
  type        = map(string)
  default     = {}
}
