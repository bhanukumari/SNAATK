module "ec2" {
  source        = "git::git@gitlab.com:snaatak/avengers-p2/devops-repos/tf-modules/ec2-main.git?ref=autoscalingV2"
  #--------------------------ec2sg---------------------------#
  namesg           = var.namesg
  vpcsg            = data.terraform_remote_state.network_state.outputs.vpc_id
  ec2inbound_ports = var.ec2inbound_ports
  ingr_protocol    = var.ingr_protocol
  ingr_cidr_block  = var.ingr_cidr_block
  #--------------------launch-template------------------------#
  name_prefix    = var.name_prefix
  image_id       = var.image_id
  instance_type2 = var.instance_type2
  key_name2      = var.key_name2
  resource_type  = var.resource_type
  instance_name  = var.instance_name
  #---------------------autoscaling-group -----------------------#
  name2                     = var.name2
  max_size                  = var.max_size
  min_size                  = var.min_size
  desired_capacity          = var.desired_capacity
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = var.health_check_type
  vpc_zone_identifier       = data.terraform_remote_state.network_state.outputs.pri_subnet_id[0]

  #---------------autoscaling -policy-------------------------#
  name3              = var.name3
  scaling_adjustment = var.scaling_adjustment
  adjustment_type    = var.adjustment_type
  cooldown           = var.cooldown
  #----------------cloud watch ------------------------#
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
}
