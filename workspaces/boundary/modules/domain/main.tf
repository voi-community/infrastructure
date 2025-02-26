#####
# domains
#####

resource "digitalocean_domain" "domain" {
  name = var.domain
}

#####
# dns records
#####

// github pages

resource "digitalocean_record" "github_pages_1" {
  domain = digitalocean_domain.domain.id
  type   = "A"
  name   = "@"
  value  = "185.199.108.153"
}

resource "digitalocean_record" "github_pages_2" {
  domain = digitalocean_domain.domain.id
  type   = "A"
  name   = "@"
  value  = "185.199.109.153"
}

resource "digitalocean_record" "github_pages_3" {
  domain = digitalocean_domain.domain.id
  type   = "A"
  name   = "@"
  value  = "185.199.110.153"
}

resource "digitalocean_record" "github_pages_4" {
  domain = digitalocean_domain.domain.id
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
}

// subdomain: vips

resource "digitalocean_record" "vips_subdomain" {
  domain = digitalocean_domain.domain.id
  name   = "vips"
  ttl    = 21600
  type   = "CNAME"
  value  = "voi-community.github.io."
}
