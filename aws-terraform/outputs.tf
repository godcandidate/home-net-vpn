output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpn_server_public_ip" {
  description = "Public IP of the VPN server"
  value       = module.ec2.public_ip
}

