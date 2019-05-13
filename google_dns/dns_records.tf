resource "google_dns_managed_zone" "fuchicorp" {
  name     = "fuchicorp"
  dns_name = "fuchicorp.com."
}

resource "google_dns_record_set" "jenkins" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "jenkins.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "nexus" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "nexus.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "grafana" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "grafana.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "jira" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "jira.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "vault" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "vault.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "docker" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "docker.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "bastion" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "bastion.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_bastion}"]
}


resource "google_dns_record_set" "dev" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qa" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}