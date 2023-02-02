variable "client_id" {
  description = "HCP credential: ClientID"
}

variable "client_secret" {
  description = "HCP credential: ClientSecret"
}

variable "region" {
  description = "AWS Region to be used"
  default     = "eu-west-1"
}

variable "vault_tier" {
  description = "Size of the Cluster [dev,starter_small,..,plus_large]"
  default     = "dev"
}