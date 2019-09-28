resource "google_dns_managed_zone" "fuchicorp" {
  name     = "fuchicorp"
  dns_name = "fuchicorp.com."
  project = "${var.project}"
}

resource "google_dns_record_set" "fuchicorp" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
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

resource "google_dns_record_set" "prod" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "prod.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "storage" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "storage.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "api_platform" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "api.academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "dev_api_platform" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.api.academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qa_api_platform" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.api.academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "academy" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
resource "google_dns_record_set" "devacademy" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qaacademy" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.academy.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "git_verification" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "_github-challenge-fuchicorp.fuchicorp.com."
  type = "TXT"
  ttl  = 300

  rrdatas = ["${var.git_verification}"]
}

resource "google_dns_record_set" "cloud" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "cloud.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "devcloud" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.cloud.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qacloud" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.cloud.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "artemis" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "artemis.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "devartemis" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.artemis.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qaartemis" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.artemis.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "exam" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "exam.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "devexam" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "dev.exam.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qaexam" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "qa.exam.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}


resource "google_dns_record_set" "old_jenkins" {
  managed_zone = "${google_dns_managed_zone.fuchicorp.name}"
  name = "old-jenkins.${google_dns_managed_zone.fuchicorp.dns_name}"
  type = "A"
  ttl  = 300

  rrdatas = ["${var.ip_domain}"]
}
