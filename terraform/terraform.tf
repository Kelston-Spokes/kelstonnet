terraform {
  cloud {
    organization = "kelstonspokes"
    workspaces { name = "kelstonnet" }
  }
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}
provider "digitalocean" {
  token = var.do_token
}
