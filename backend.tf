# terraform {
#   backend "azurerm" {
#     resource_group_name  = "test-rg"
#     storage_account_name = "testaccount837"
#     container_name       = "tfstate12"
#     key                  = "terraform.tfstate"
#   }
# }

resource "azurerm_resource_group" "demo" {
  name     = var.resource_group_name[0]
  location = var.location[0]
}

resource "azurerm_storage_account" "demo" {
  name                     = var.storage_account_name[0]
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "demo" {
  name                 = var.container_name[0]
  storage_account_id = azurerm_storage_account.demo.id
}