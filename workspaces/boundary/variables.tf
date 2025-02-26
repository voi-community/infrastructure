#####
# Required
#####

variable "digitalocean_access_token" {
  description = "A DigitalOcean personal access token"
  type        = string
}

#####
# Optional
#####

# See https://slugs.do-api.dev/ for valid options.
variable "region" {
  default     = "nyc3"
  description = "The region to deploy the infrastructure to"
  type        = string
}
