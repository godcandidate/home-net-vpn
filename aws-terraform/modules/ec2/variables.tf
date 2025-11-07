variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group"
  type        = string
}

variable "instance_key" {
  description = "Public key for EC2 access"
  type        = string
}

variable "home_server_security_group_id" {
  description = "ID of the home server security group"
  type        = string
}