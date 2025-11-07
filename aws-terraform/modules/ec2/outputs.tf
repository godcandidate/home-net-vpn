output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.vpn_server.public_ip
}

output "vpn_server_private_ip" {
  description = "Private IP of the VPN server"
  value       = aws_instance.vpn_server.private_ip
}
