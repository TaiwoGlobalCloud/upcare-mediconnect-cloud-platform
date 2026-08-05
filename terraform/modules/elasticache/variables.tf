#############################################
# Redis Configuration
#############################################

variable "node_type" {
  description = "Redis node type."
  type        = string
  default     = "cache.t3.micro"
}

variable "snapshot_retention_limit" {
  description = "Number of days to retain automatic Redis snapshots."
  type        = number
  default     = 7
}

variable "snapshot_window" {
  description = "Daily time range during which snapshots are created."
  type        = string
  default     = "03:00-05:00"
}