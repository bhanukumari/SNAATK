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
#-----------------asg-launch-template--------------------
variable "name_prefix" {
  description = "Name which you define "
}
variable "image_id" {
  description = "Instance image "
}
variable "instance_type2" {
  description = "Type of instance"
}
variable "key_name2" {
  description = "key for accessing ec2 "
}
variable "resource_type" {
  description = "the resource which you want to use"
}
variable "instance_name" {
  description = "Define name for your asg servers"
}
#--------------asg-group-------------------
variable "name2" {
  description = "Name which you define "
}
variable "max_size" {
  description = "maxximum size of instances"
}
variable "min_size" {
  description = "minnimum required instances"
}
variable "desired_capacity" {
  description = "desired instances you required "
}
variable "health_check_grace_period" {
  description = ""
}
variable "health_check_type" {
  description = "The Autoscaling will happen based on health of AWS EC2 instance defined in AWS CLoudwatch Alarm "
}
#-------------aasg-policy-----------------
variable "name3" {
  description = "name of asg policy"
}
variable "scaling_adjustment" {
  description = ""
}
variable "adjustment_type" {
  description = ""
}
variable "cooldown" {
  description = ""
}
#-----------------Cloudwatch------------------------------
variable "alarm_name" {
  description = ""
}
variable "comparison_operator" {
  description = ""
}
variable "evaluation_periods" {
  description = ""
}
variable "metric_name" {
  description = ""
}
variable "namespace" {
  description = ""
}
variable "period" {
  description = ""
}
variable "statistic" {
  description = ""
}
variable "threshold" {
  description = ""
}
