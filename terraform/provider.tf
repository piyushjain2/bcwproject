locals {
  default_labels = {
    managed-by = "terraform"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("../application_default_credentials.json")
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

data "google_project" "this" {}

data "google_compute_default_service_account" "default" {}
