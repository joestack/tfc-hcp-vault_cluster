output "vault_token" {
  value     = hcp_vault_cluster_admin_token.example.token
  sensitive = true
}

output "vault_address" {
  value = hcp_vault_cluster.example.public_endpoint
}

output "vault_namespace" {
  value = hcp_vault_cluster.example.namespace
}
