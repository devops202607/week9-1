output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "GKE cluster endpoint"
  value       = local.cluster_endpoint
  sensitive   = true
}

output "region" {
  description = "GCP region"
  value       = var.region
}

output "flux_deploy_key_public" {
  description = "Public SSH key added to GitHub as deploy key"
  value       = tls_private_key.flux.public_key_openssh
}

output "get_credentials_command" {
  description = "Command to configure kubectl"
  value       = "gcloud container clusters get-credentials ${var.cluster_name} --zone ${var.region}-a --project ${var.project_id}"
}

