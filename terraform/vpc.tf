module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5"

  name = "${var.name}-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${var.region}a"]
  private_subnets = ["10.0.1.0/24"]

  tags = local.tags
}
