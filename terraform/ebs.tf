resource "aws_volume_attachment" "this" {
  for_each = var.instance_names

  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.this[each.key].id

  instance_id = module.ec2_instance[each.key].id
}

resource "aws_ebs_volume" "this" {
  for_each = var.instance_names

  availability_zone = "${var.region}a"
  size              = 1

  tags = local.tags
}
