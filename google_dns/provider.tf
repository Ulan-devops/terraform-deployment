provider "google" {
  credentials = "${file(var.credentials)}"
  project     = "${var.project}"
  region      = "${var.gcp_region}"
}
