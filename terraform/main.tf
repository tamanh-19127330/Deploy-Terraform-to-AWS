terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }

  backend "s3" {
    bucket = "mtr050-test"
    key    = "terraform/tf.state"
    region = "ap-southeast-2"
  }
}

variable "aws_access_key"{
default = "AKIAXALHWFOG2HVSU4EE"
}

variable "aws_secret_key"{
default = "lRWVPFmYw06H1osVqkqWQ+4ea1VSKyLOmKI/Xu58"
}

provider “aws” {
access_key=var.aws_access_key
secret_key=var.aws_secret_key
}