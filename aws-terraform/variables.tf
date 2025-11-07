variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "homenetvpn"
}

variable "instance_key" {
  description = "Public key for EC2 access"
  type        = string
  default = "ec2-key"
}

variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "profile" {
  description = "AWS CLI profile to use"
  type        = string
}