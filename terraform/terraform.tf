terraform {
  required_version = "~> 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.2"
    }
  }

  backend "gcs" {
    bucket = "terraform-state-bwc"
    prefix = "terraform/state"
  }
}