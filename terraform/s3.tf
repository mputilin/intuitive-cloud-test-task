module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3"

  bucket = "${var.name}-bucket"

  tags = local.tags
}
