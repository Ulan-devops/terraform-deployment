variable "git_verification" {}

variable "gcp_region" {
  default = "us-central1"
  description = "The region to operate under"
}

variable "gcp_project_id" {
  default = "fuchicorp-project"
  description = "GCP project targeted"
}

variable "gcp_dns_zone" {
  default = "fuchicorp"
  description = "Google Cloud zone name to create"
}


variable "gcp_svc_acc" {
  default = "./dns-manager.json"
  description = "Google svc account"
}

variable "ip_domain" {
    description = "Fuchicorp domain IP"
    default = "35.202.10.188"

}
variable "ip_bastion" {
    description = "Fuchicorp Bastion Host IP"
    default = "35.202.10.188"

}
variable "ip_storage" {
    description = "Fuchicorp Bastion Host IP"
    default = "35.202.10.188"

}
