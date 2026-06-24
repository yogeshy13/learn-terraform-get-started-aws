module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"

  instance_type   = var.instance_type
  key_name        = var.key_name
  public_key_path = var.public_key_path
  instance_name   = "Terraform-VPC-Demo"

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id
}