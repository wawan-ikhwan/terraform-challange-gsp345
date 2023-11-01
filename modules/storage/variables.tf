variable "region" {
  description = "The GCP region where resources will be created."
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "The GCP zone where resources will be created."
  type        = string
  default     = "" # Fill in your desired default zone
}

variable "project_id" {
  description = "The Google Cloud Project ID where resources will be created."
  type        = string
  default     = "" # Fill in your Project ID
}

variable "bucket_name" {
  type        = string
  description = "Masukkan bucket name (global unique) sesuai instruksi lab:"
}
