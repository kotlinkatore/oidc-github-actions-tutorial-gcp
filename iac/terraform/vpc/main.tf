resource "google_compute_network" "main" {
  name                    = "my-awesome-vpc-network"
  project                 = var.project_id
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "subnet_1" {
  name          = "subnet-1"
  project       = var.project_id
  region        = var.region
  network       = google_compute_network.main.id
  ip_cidr_range = var.subnet_1_details.cidr_block
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = "subnet-2"
  project       = var.project_id
  region        = var.region
  network       = google_compute_network.main.id
  ip_cidr_range = var.subnet_2_details.cidr_block
}
