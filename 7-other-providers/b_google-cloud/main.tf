provider "google" {
    credentials = "${file(/path/to/file.json)}"
    project     = "my-gce-project"
    region      = "europe-west1-b"
}