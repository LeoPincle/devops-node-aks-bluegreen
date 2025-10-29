terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "3fd40d76-8246-40da-a57e-5c641e5b59c7"
  features {}
}
