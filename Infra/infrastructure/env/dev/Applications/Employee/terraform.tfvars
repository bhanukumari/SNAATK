# ami           = "ami-06c4532923d4ba1ec"
# instance_type = "t2.micro"
# key_name      = "Terraform"
# tenancy       = "default"
# instance_tag  = "Employee-Service"
#-------------------------ec2sg----------------------#
ec2inbound_ports = ["22", "80"]
ingr_protocol    = "tcp"
ingr_cidr_block  = ["10.0.1.0/24"]
namesg           = "Employee-SG"
#---------launch template ---------------------#
name_prefix    = "Employee-autoscaling"
image_id       = "ami-06c4532923d4ba1ec"
instance_type2 = "t2.micro"
key_name2      = "Terraform"
resource_type  = "instance"
instance_name  = "Employee instances"
#---------------autoscaling group -------------------#
#availability_zones2       = "ap-northeast-1a"
max_size                  = "3"
min_size                  = "1"
name2                     = "Employee-autoscaling"
desired_capacity          = "2"
health_check_grace_period = "300"
health_check_type         = "EC2"
#-----------------autoscaling policy --------------#
name3              = "Employee-asg_policy"
scaling_adjustment = "2"
adjustment_type    = "ChangeInCapacity"
cooldown           = "300"
#---------------cloudwatch--------------------#
alarm_name          = "Employee-CPU-alarm"
comparison_operator = "GreaterThanOrEqualToThreshold"
evaluation_periods  = "2"
metric_name         = "CPUUtilization"
namespace           = "Aws/EC2"
period              = "60"
statistic           = "Average"
threshold           = "50"
