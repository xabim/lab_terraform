resource "google_compute_instance" "my-instance" {
    name            = "my-gce-instance"
    machinte_type   = "f1-micro"
    zone            = "europe-west1-b"
    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

   network_interface {
    network = "default"
  }
}