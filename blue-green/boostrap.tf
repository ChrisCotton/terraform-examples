variable "infrastructure_version" {
  default = "1"
}

provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "storage.panda-terraform-bluegreen"
    region  = "us-east-2"
    key     = "v1"
  }
}

