variable "region" {
  default = "us-east-1"
}

variable "name" {
  default = "intuitive-cloud-lab"
}

variable "instance_names" {
  type    = set(string)
  default = ["one", "two"]
}
