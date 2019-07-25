terraform {
  backend "gcs" {
    bucket  = "fuchicorp-bucket"
    prefix  = "tools/dns-manager"
    project = "universal-team-245120"
  }
}
