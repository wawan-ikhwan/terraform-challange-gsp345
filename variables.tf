variable "region" {
  description = "The GCP region where resources will be created."
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "The GCP zone where resources will be created."
  type        = string
}

variable "project_id" {
  description = "The Google Cloud Project ID where resources will be created."
  type        = string
  default     = "qwiklabs-gcp-01-0bef34d080c9"
}

# variable "network_name" {
#   description = "Masukkan nama network VPC sesuai instruksi lab:"
#   type        = string
#   default     = "" # Fill in your Project ID
# }