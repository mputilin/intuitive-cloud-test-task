module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5"

  for_each = var.instance_names

  name = "${var.name}-instance-${each.key}"

  instance_type = "t2.micro"
  subnet_id     = element(module.vpc.private_subnets, 0)

  tags = local.tags
}
