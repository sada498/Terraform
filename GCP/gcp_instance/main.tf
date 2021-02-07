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
  name = "terraform-test-network1"
}
resource "google_compute_address" "vm_static_ip" {
  name = "terraform-static-ip"
}
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
    
    #   image = "debian-cloud/debian-9"
    image = "cos-cloud/cos-stable"

    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
      nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}