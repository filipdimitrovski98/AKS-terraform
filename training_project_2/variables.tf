variable "kubernetes_cluster_id" {
  default = "" #in the previous project I didn't save the output for the cluster_id since I already had a default nodepool/
               # I didn't apply this one 
}

variable "kubernetes_cluster_name" {
  default = "second_pool"
}