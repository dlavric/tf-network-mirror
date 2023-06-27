terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
}