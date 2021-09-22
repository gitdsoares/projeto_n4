locals {
  default_labels = {
    cost-center = var.cost_center
    customer    = var.customer
  }

  labels            = merge(local.default_labels, var.labels)
  alb_name          = "${var.customer}-alb1-${terraform.workspace}"
  template_name     = "${var.customer}-template1-${terraform.workspace}"
  asg_name          = "${var.customer}-asg1-${terraform.workspace}"
  igw_name          = "${var.customer}-igw1-${terraform.workspace}"
  ngw1_name         = "${var.customer}-ngw1-${terraform.workspace}"
  ngw2_name         = "${var.customer}-ngw2-${terraform.workspace}"
  pvt_rt2           = "${var.customer}-private-rt2-${terraform.workspace}"
  sg1_name          = "${var.customer}-sg1-${terraform.workspace}"
  vpc_name          = "${var.customer}-vpc1-${terraform.workspace}"
  public_sub1_name  = "${var.customer}-public-sub1-${terraform.workspace}"
  public_sub2_name  = "${var.customer}-public-sub2-${terraform.workspace}"
  private_sub1_name = "${var.customer}-private-sub1-${terraform.workspace}"
  private_sub2_name = "${var.customer}-private-sub2-${terraform.workspace}"
}