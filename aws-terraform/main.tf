module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_groups.vpn_security_group_id
  home_server_security_group_id = module.security_groups.home_server_security_group_id
  instance_key      = var.instance_key
}

module "security_groups" {
  source = "./modules/security_groups"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  vpn_server_private_ip = module.ec2.vpn_server_private_ip
}