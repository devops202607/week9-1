resource "flux_bootstrap_git" "this" {
  path = var.flux_target_path

  depends_on = [
    google_container_node_pool.primary_nodes,
    github_repository_deploy_key.flux,
  ]
}
