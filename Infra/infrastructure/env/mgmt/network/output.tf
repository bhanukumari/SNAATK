output "vpc_id" {
  value = module.mgmt_network.vpc_id
}


output "pub_subnet_id" {
  value = module.mgmt_network.pub_subnet_id
}



output "pri_subnet_id" {
  value = module.mgmt_network.pri_subnet_id
}


output "igw_id" {
  value = module.mgmt_network.igw_id
}

output "public_routeTable_id" {
  value = module.mgmt_network.public_routeTable_id
}

output "private_routeTable_id" {
  value = module.mgmt_network.private_routeTable_id
}

output "natgw_id" {
  value = module.mgmt_network.natgw_id
}
//*********************************************
output "eip_id" {
  value = module.mgmt_network.eip_id
}
//*****************************************

output "vpc_flow_log_s3_arn" {
  value = module.mgmt_network.vpc_flow_log_s3_arn
}