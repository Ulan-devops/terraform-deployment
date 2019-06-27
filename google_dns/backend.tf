terraform {
  backend "gcs" {
    bucket  = "fuchicorp"
    prefix  = "tools/dns-manager"
    project = ""
  }
}
