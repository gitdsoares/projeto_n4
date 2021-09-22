
variable "availabilityZone1" {
  type    = string
  default = "us-east-1a"
}

variable "availabilityZone2" {
  type    = string
  default = "us-east-1b"
}

variable "instanceTenancy" {
  type    = string
  default = "default"
}

variable "dnsSupport" {
  type    = bool
  default = true
}

variable "dnsHostNames" {
  type    = bool
  default = true
}

variable "vpcCIDRblock" {
  type    = string
  default = "10.0.0.0/16"
}

variable "publicsCIDRblock1" {
  type    = string
  default = "10.0.1.0/24"
}

variable "publicsCIDRblock2" {
  type    = string
  default = "10.0.2.0/24"
}

variable "privatesCIDRblock1" {
  type    = string
  default = "10.0.3.0/24"
}

variable "privatesCIDRblock2" {
  type    = string
  default = "10.0.4.0/24"
}

variable "publicdestCIDRblock" {
  type    = string
  default = "0.0.0.0/0"
}

variable "mapPublicIP" {
  type    = bool
  default = true
}

variable "customer" {
  type    = string
  default = "mackenzie"
}

variable "cost_center" {
  type    = string
  default = "devops"
}

variable "alb_env" {
  type    = bool
  default = false
}

variable "alb_type" {
  type    = string
  default = "application"
}

variable "ami" {
  type    = string
  default = "ami-0c2b8ca1dad447f8a"
}

variable "shape" {
  type    = string
  default = "t2.micro"
}

variable "asg_desired" {
  type    = number
  default = 2
}

variable "asg_max" {
  type    = number
  default = 4
}

variable "asg_min" {
  type    = number
  default = 2
}

variable "asg_version" {
  type    = string
  default = "$Latest"
}

variable "ngw_conn" {
  type    = string
  default = "private"
}

variable "labels" {
  type    = map(string)
  default = {
    Environment = "prd"
  }
}

variable "http_port" {
  type    = number
  default = 80
}

variable "rule_action1" {
  type    = string
  default = "allow"
}

variable "rule_prio" {
  type    = number
  default = 100
}

variable "rule_protocol" {
  type    = string
  default = "tcp"
}

variable "n_port" {
  type    = number
  default = 0
}