# https://www.terraform.io/language/settings/backends/gcs
# Terraform Settings
terraform {
  backend "gcs" {
    bucket = "test-account-bucket-1"
    prefix = "terraform/state"
    credentials = "level-array-468400-p6-6ff16d21f7ec.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}