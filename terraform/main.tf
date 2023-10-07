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

}

variable "aws_secret_key"{

}

provider “aws” {
access_key=var.aws_access_key
secret_key=var.aws_secret_key
}