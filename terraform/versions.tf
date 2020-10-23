terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    http = {
      source = "hashicorp/http"
    }
    null = {
      source = "hashicorp/null"
    }
    template = {
      source = "hashicorp/template"
    }
  }
  required_version = ">= 0.13"
}
