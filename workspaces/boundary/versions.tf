terraform {
  # use terraform cloud to handle state
  cloud {
    organization = "voicommunity"

    workspaces {
      name = "boundary"
    }
  }

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}
