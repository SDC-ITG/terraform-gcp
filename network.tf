##----------------------------------------------------------------------
##  Create Network
##----------------------------------------------------------------------
# VPC
resource "google_compute_network" "vpc" {
  name                    = "vpc-terraform"
  auto_create_subnetworks = false
}

# Subnet
resource "google_compute_subnetwork" "pub_subnet" {
  name          = "sub-terraform"
  ip_cidr_range = "192.168.0.0/26"
  network       = google_compute_network.vpc.name
  description   = "public subnet"
  region        = "asia-northeast1"
}

# Firewall
resource "google_compute_firewall" "firewall" {
  name          = "fw-terraform"
  network       = google_compute_network.vpc.name
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["22", "3389"]
  }
}
