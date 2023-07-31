terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
  }
  required_version = ">= 0.14"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

