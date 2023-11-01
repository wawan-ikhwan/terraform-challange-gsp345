terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }

  # backend "gcs" {
  #   bucket  = var.bucket_name
  #   prefix  = "terraform/state"
  # }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "vpc" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 6.0"
  project_id   = var.project_id # Replace this with your project ID
  network_name = var.network_name
  mtu          = 1460

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region =  var.region
    },
    {
      subnet_name           = "subnet-02"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = var.region
    },
  ]
}