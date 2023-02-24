terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.54.0"
    }

    github = {
      source = "integrations/github"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east"
}


provider "github" {
    token = "xxxxxxxx"
}
