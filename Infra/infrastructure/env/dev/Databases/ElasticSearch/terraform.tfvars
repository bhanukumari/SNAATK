ami           = "ami-06c4532923d4ba1ec"
instance_type = "t2.micro"
key_name      = "Ansible"
tenancy       = "default"
instance_tag  = "elasticsearch-Service"
#-------------------------ec2sg----------------------#
ec2inbound_ports = ["22", "9200"]
ingr_protocol    = "tcp"
ingr_cidr_block  = ["10.0.1.0/24"]
namesg           = "elasticsearch-SG"