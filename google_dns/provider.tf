provider "google" {
  credentials = "${var.gcp_svc_acc}"
  project     = "${var.gcp_project_id}"
  region      = "${var.gcp_region}"
}