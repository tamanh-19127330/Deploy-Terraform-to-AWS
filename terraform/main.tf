terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 4.34.0"
    }
  }

  backend "gcs" {
   # credentials = "pubsubkeys.json"
    bucket = "terraform-test-github"
    prefix = "terraform/state"
  }
}


provider "google" {
    project = "awesome-carver-401507"
    #credentials = "pubsubkeys.json"
}