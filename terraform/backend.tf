
terraform {
  backend "gcs" {
    bucket = "terraform-state-bwc"
    prefix = "terraform/state"
  }
}