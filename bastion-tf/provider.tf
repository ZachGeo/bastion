terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.37"
    }
  }

  required_version = "~> 1.6"
}

provider "aws" {
  region = "eu-central-1"
}
