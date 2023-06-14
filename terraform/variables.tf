variable "region" {
  type    = string
  default = "us-east-1"
}

variable "name" {
  type    = string
  default = "intuitive-cloud-lab"
}

variable "instance_names" {
  type    = set(string)
  default = ["one", "two"]
}
