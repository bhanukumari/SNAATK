module "ec2" {
  source        = "git::git@gitlab.com:snaatak/avengers-p2/devops-repos/tf-modules/ec2-main.git?ref=EC2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = data.terraform_remote_state.network_state.outputs.pri_subnet_id[0]
  key_name      = var.key_name
  tenancy       = var.tenancy
  instance_tag  = var.instance_tag
  #--------------------------ec2sg---------------------------#
  namesg           = var.namesg
  vpcsg            = data.terraform_remote_state.network_state.outputs.vpc_id
  ec2inbound_ports = var.ec2inbound_ports
  ingr_protocol    = var.ingr_protocol
  ingr_cidr_block  = var.ingr_cidr_block
}
