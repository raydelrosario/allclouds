terraform {
  required_version = ">= 1.3.4"
  required_providers {
      digitalocean = {
        version = ">= 2.25.2"
        source  = "digitalocean/digitalocean"
      }
  }
}