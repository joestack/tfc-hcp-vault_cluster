output "vault_token" {
  value     = hcp_vault_cluster_admin_token.example.token
  sensitive = true
}

output "vault_private_url" {
  value = hcp_vault_cluster.example.vault_private_endpoint_url
}

output "vault_public_url" {
  value = hcp_vault_cluster.example.vault_public_endpoint_url
}

output "vault_namespace" {
  value = hcp_vault_cluster.example.namespace
}
