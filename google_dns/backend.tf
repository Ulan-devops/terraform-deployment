terraform {
  backend "gcs" {
    bucket  = "farrukh-bucket"
    prefix  = "tools/dns-manager"
    project = "farrukh-project-88"
  }
}
