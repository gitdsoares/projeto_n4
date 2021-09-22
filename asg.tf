resource "aws_launch_template" "template" {
  name_prefix   = "template1"
  image_id      = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "asg" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 2
  max_size           = 3
  min_size           = 2

  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }
}