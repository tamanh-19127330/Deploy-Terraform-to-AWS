

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }

  backend "s3" {
    bucket = "terraform-test-github"
    key    = "terraform/tf.state"
    region = "ap-southeast-2"
  }
}



provider "aws" {

}