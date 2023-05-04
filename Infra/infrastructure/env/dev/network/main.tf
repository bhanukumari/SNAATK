module "dev_network" {
  source = "git::git@gitlab.com:snaatak/avengers-p2/devops-repos/tf-modules/network-skeleton.git?ref=feature"
  vpc_cidr        = var.vpc_cidr
  vpc_name        = var.vpc_name
  pub_subnet_cidr = var.pub_subnet_cidr
  pri_subnet_cidr = var.pri_subnet_cidr
  subnet_az       = var.subnet_az
  pub_subnet_name = var.pub_subnet_name
  pri_subnet_name = var.pri_subnet_name
  public_rt_name  = var.public_rt_name
  private_rt_name = var.private_rt_name
  igw_name        = var.igw_name
  enable_vpc_logs      = var.enable_vpc_logs
  vpc_flow_log_s3_name = var.vpc_flow_log_s3_name
   vpc-flow-logs-role =var.vpc-flow-logs-role
}

