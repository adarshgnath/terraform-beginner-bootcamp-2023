terraform {

  cloud {
    organization = "KUMOFY"

    workspaces {
      name = "terrahouse-1"
    }
  }
  
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }

    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "random" {
  # Configuration options
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length           = 32
  special          = false
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

  }

output "Random_bucket_name" {
  value = random_string.bucket_name.result
}

