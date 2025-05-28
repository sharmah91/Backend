terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG_Hitesh_3"
    storage_account_name = "accstorage9"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5d5be31f-46ae-4693-866a-7cb188220117"
}

resource "azurerm_resource_group" "example19" {
  name     = "RG_Hitesh_6"
  location = "East US"
}

resource "azurerm_storage_account" "example1234" {
  name                     = "shailystorageaccount19"
  location                 = azurerm_resource_group.example19.location
  resource_group_name      = azurerm_resource_group.example19.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
