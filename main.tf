provider "hcp" {
    client_id     = var.client_id
    client_secret = var.client_secret
}

resource "hcp_hvn" "example_hvn" {
  hvn_id         = "hcp-tf-example-hvn"
  cloud_provider = "aws"
  region         = var.region
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_vault_cluster" "example" {
  cluster_id      = "hcp-tf-example-vault-cluster"
  hvn_id          = hcp_hvn.example_hvn.hvn_id
  public_endpoint = true
  tier            = "dev"
}

resource "hcp_vault_cluster_admin_token" "example" {
  cluster_id = hcp_vault_cluster.example.cluster_id
}
