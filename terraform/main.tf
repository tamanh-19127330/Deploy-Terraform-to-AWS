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
    region = "us-east-1"
  }
}

variable "aws_access_key"{
default = "AKIAXALHWFOGYYHSNF5L"
}

variable "aws_secret_key"{
default = "eMZsbC8pAq5cZiTY01syQ/Fx3NGOP3647pO9ThDe"
}

provider "aws" {
access_key=var.aws_access_key
secret_key=var.aws_secret_key
}