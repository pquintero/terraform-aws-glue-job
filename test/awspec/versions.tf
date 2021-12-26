terraform {
  required_version = ">= 0.15.0"

  required_providers {
    aws    = ">= 3.68.0"
    random = ">= 3.1"
  }
}

provider "aws" {
  profile ="aws-edit-392514017703"
  region = "us-east-1"
}