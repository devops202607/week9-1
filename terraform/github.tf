resource "github_repository_deploy_key" "flux" {
  repository = var.github_repo
  title      = "flux-${var.cluster_name}"
  key        = tls_private_key.flux.public_key_openssh
  read_only  = false
}
