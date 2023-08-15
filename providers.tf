terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "stg196c"
    container_name       = "azure-devops"
    key                  = "aks-grafana-prometheus.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}