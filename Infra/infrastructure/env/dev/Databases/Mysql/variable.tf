variable "ami" {
  description = "Ami id of instance"
}
variable "instance_type" {
  description = "Choosing instance type"
}
variable "key_name" {
  description = "Giving public key"
}
variable "tenancy" {
  description = ""
}

variable "instance_tag" {
  description = "Give a name to instance"
}

variable "namesg" {
  description = "name of security group"
}
variable "ec2inbound_ports" {
  description = "Add all the inbound ports you need"
}
variable "ingr_protocol" {
  description = "Define the protocol"
}
variable "ingr_cidr_block" {
  description = "Mention the CIDR block of your subnet"
}