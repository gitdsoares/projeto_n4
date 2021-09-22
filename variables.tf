
variable "availabilityZone1" {
  default = "us-east-1a"
}
variable "availabilityZone2" {
  default = "us-east-1b"
}
variable "instanceTenancy" {
  default = "default"
}
variable "dnsSupport" {
  default = true
}
variable "dnsHostNames" {
  default = true
}
variable "vpcCIDRblock" {
  default = "10.0.0.0/16"
}
variable "publicsCIDRblock1" {
  default = "10.0.1.0/24"
}
variable "publicsCIDRblock2" {
  default = "10.0.2.0/24"
}
variable "privatesCIDRblock1" {
  default = "10.0.3.0/24"
}
variable "privatesCIDRblock2" {
  default = "10.0.4.0/24"
}
variable "publicdestCIDRblock" {
  type    = string
  default = "0.0.0.0/0"
}
variable "mapPublicIP" {
  default = true
}