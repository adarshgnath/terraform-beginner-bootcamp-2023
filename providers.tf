terraform {

#   cloud {
#     organization = "KUMOFY"

#     workspaces {
#       name = "terrahouse-1"
#     }
#   }
  
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


provider "aws" {
}
provider "random" {
  # Configuration options
}