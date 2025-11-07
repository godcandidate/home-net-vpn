# Ubuntu 24.04 Noble AMI (Free tier Eligible)
locals {
  ubuntu_ami = "ami-0a716d3f3b16d290c"
}


# Create the VPN Server instance
resource "aws_instance" "vpn_server" {
  ami                    = local.ubuntu_ami
  instance_type          = "t3.micro"
  key_name               = var.instance_key
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id

  tags = {
    Name = "${var.project_name}-server"
  }
}

# Create Home Server instance
resource "aws_instance" "home_server" {
  ami                    = local.ubuntu_ami
  instance_type          = "t3.micro"
  key_name               = var.instance_key
  vpc_security_group_ids = [var.home_server_security_group_id]
  subnet_id              = var.subnet_id

  tags = {
    Name = "home-server"
  }
}