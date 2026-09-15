variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "week9-1"
}

variable "node_count" {
  description = "Number of nodes per zone"
  type        = number
  default     = 3
}

variable "machine_type" {
  description = "GCE machine type for nodes"
  type        = string
  default     = "e2-small"
}

variable "disk_size_gb" {
  description = "Node disk size in GB"
  type        = number
  default     = 12
}

variable "github_owner" {
  description = "GitHub organization or user"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "week9-1"
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "flux_target_path" {
  description = "Path in the repo where Flux will sync from"
  type        = string
  default     = "flux"
}

