variable "suffix" {
  description = "Suffix to append to resource names (in our case, the group number)"
  type        = string
  nullable    = false
  default     = "_50"
}

variable "key" {
  description = "Name of key pair"
  type        = string
  default     = "key_group50"
}

# Updated node configuration for news recommendation system
variable "nodes" {
  description = "Mapping of node names to IP addresses"
  type        = map(string)
  default     = {
    "node1" = "192.168.1.11"  # API server and frontend
    "node2" = "192.168.1.12"  # Recommendation engine
    "node3" = "192.168.1.13"  # Database and monitoring
    "node4" = "192.168.1.14"  # News fetcher and processor
  }
}

# Add new variables for news recommendation system
variable "news_api_key" {
  description = "API key for accessing news sources"
  type        = string
  default     = ""
  sensitive   = true
}

variable "recommendation_model_version" {
  description = "Version of the recommendation model to deploy"
  type        = string
  default     = "1.0.0"
}

variable "enable_monitoring" {
  description = "Enable monitoring stack (Prometheus, Grafana)"
  type        = bool
  default     = true
}