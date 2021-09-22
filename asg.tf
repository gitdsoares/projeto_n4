resource "aws_launch_template" "template" {
  name_prefix   = local.template_name
  image_id      = var.ami
  instance_type = var.shape
}

resource "aws_autoscaling_group" "asg" {
  name                = local.asg_name
  vpc_zone_identifier = [aws_subnet.Private_subnet1.id, aws_subnet.Private_subnet2.id]
  desired_capacity    = var.asg_desired
  max_size            = var.asg_max
  min_size            = var.asg_min

  launch_template {
    id      = aws_launch_template.template.id
    version = var.asg_version
  }
}
