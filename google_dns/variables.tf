variable "git_verification" {}

variable "gcp_region" {
  default     = "us-central1"
  description = "The region to operate under"
}

variable "project" {
  default     = "ivory-forklift-220419"
  description = "GCP project targeted"
}

variable "gcp_dns_zone" {
  default     = "asirustech"
  description = "Google Cloud zone name to create"
}

variable "credentials" {
  default     = "/Users/farrukh90/farrukh-common-service-account.json"
  description = "Google svc account"
}

variable "ip_domain" {
  description = "asirustech domain IP"
  default     = "35.184.138.252"
}

variable "ip_bastion" {
  description = "asirustech Bastion Host IP"
  default     = "35.193.178.1"
}
