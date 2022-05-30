data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
  cloud {
    organization = "Olatte"

    workspaces {
      name = "terraform-workspace"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

locals {
  aws_region = data.aws_region.current.name
  aws_account_id = data.aws_caller_identity.current.account_id
}
