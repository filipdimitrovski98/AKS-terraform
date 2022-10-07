# terraform {

#     backend "azurerm" {
#         resource_group_name  = "tfstate"
#         storage_account_name = "tfstateqyz07"
#         container_name       = "tfstate"
#         key                  = "terraform.tfstate"
#         access_key           = "QPkXqpvf6imatrjlPdzZf49GNeEDcuf6rhfgQoeICtf2UWQeeA+MhY4TnSlqH2PtFQasUq6fdZfP+ASt/wmSnw=="
#     }

# } This is if you want to use the same backend as the previous deployment it's preferable to use different storage accounts.

module "k8s_cluster" {
    source = "/home/fdimitrovski/training_project/"
    cluster_name = var.name
}

module "node_pool" {
    source = "/home/fdimitrovski/training_project_2/"
    kubernetes_cluster_id = var.kubernetes_cluster_id
    kubernetes_cluster_name = var.kubernetes_cluster_name
}
