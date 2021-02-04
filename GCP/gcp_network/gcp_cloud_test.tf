terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
# add the Service Account Key path to access the credentials
  credentials = file("C:/Users/X270/Desktop/playground-s-11-d4da1fd1-6c7d78c5fa29.json")

  project = "playground-s-11-727edfdf"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-test-network"
}