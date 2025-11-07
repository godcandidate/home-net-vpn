output "vpn_security_group_id" {
  description = "ID of the VPN security group"
  value       = aws_security_group.vpn_server.id
}

output "home_server_security_group_id" {
  description = "ID of the home server security group"
  value       = aws_security_group.home_server.id
}