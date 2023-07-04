# In the real world would prefer to use something better than local: terraform cloud or at least S3, but for our case local is good enough
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}