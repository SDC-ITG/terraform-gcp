##----------------------------------------------------------------------
## Create Instance
##----------------------------------------------------------------------

# Compute Engine
resource "google_compute_instance" "instance1" {
  name         = "terraform-test1"
  machine_type = "e2-micro"
  zone         = "asia-northeast1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network    = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.pub_subnet.name
    access_config {}
  }
}

# Compute Engine
resource "google_compute_instance" "instance2" {
  name         = "terraform-test2"
  machine_type = "e2-micro"
  zone         = "asia-northeast1-a"
  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-2012-r2"
    }
  }
  network_interface {
    network    = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.pub_subnet.name
    access_config {}
  }
}
