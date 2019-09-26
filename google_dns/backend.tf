terraform {
  backend "gcs" {
    bucket  = "fuchicorp-bucket"
    prefix  = "tools/dns-manager"
    project = "fuchicorp-project-88"
  }
}
