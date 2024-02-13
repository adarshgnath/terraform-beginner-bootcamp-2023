terraform {

#   cloud {
#     organization = "KUMOFY"

#     workspaces {
#       name = "terrahouse-1"
#     }
#   }
  
  required_providers {
    
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
}
