# terraform {

#     backend "azurerm" {
#         resource_group_name  = "tfstate"
#         storage_account_name = "tfstateqyz07"
#         container_name       = "tfstate"
#         key                  = "terraform.tfstate"
# #       access_key           = "QPkXqpvf6imatrjlPdzZf49GNeEDcuf6rhfgQoeICtf2UWQeeA+MhY4TnSlqH2PtFQasUq6fdZfP+ASt/wmSnw=="
#     }

# } This is used in case you want to use the same storage

provider "azurerm" {
  features {}
  subscription_id = "sensitive"
  tenant_id       = "sensitive"
  client_id       = "sensitive"
  client_secret   = "sensitive"
}

resource "azurerm_kubernetes_cluster_node_pool" "create_nodepool" {
  name                  = var.kubernetes_cluster_name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  tags = {
    Environment = "Development"
  }
  
}
 