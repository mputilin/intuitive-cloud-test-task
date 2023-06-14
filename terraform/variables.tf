variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key" {
  type        = string
  description = "AWS access key ID"
  default     = ""
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret access key"
  default     = ""
}

variable "name" {
  type    = string
  default = "intuitive-cloud-lab"
}

variable "instance_names" {
  type    = set(string)
  default = ["one", "two"]
}
