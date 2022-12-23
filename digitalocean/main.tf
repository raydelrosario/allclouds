resource "digitalocean_kubernetes_cluster" "main" {
  name       = "allclouds-cluster"
  region     = "nyc1"
  version    = "1.25.4-do.0"

  node_pool {
    name = "allclouds-node"
    size = "s-2vcpu-2gb"
    node_count = 1
  }
}