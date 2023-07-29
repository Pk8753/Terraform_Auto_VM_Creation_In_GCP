terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.75.1"
    }
  }
}

provider "google" {
  project = "deploy-and-test"
  region = "us-central1"
  zone = "us-central1-a"
  credentials =  "service-account-key.json"
}