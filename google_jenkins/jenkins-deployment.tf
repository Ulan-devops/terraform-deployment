resource "kubernetes_persistent_volume_claim" "jenkins-pvc" {
  metadata {
    name = "jenkins-pvc"
    namespace = "tools"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests {
        storage = "20Gi"
      }
    }
  }
}


resource "kubernetes_deployment" "jenkins-deployment" {
  metadata {
    name = "terraform-jenkins"
    labels { app = "jenkins-terraform-deployment" }
    namespace = "tools"
  }

  spec {
    replicas = 1

    selector { match_labels { app = "jenkins-pod" }
    }

    template {
      metadata { labels { app = "jenkins-pod" }
      }

      spec {
        container {
          image = "fsadykov/centos_jenkins:0.3"
          name  = "jenkins"

          volume_mount {
            name = "docker-sock"
            mount_path = "/var/run"

            name = "jenkins-home"
            mount_path = "/root/.jenkins"
          }
        }

        volume {
          name = "docker-sock"
          host_path = { path = "/var/run" }
        }

        volume {
          name = "jenkins-home"
          persistent_volume_claim {
            claim_name = "jenkins-pvc"
          }
        }
      }
    }
  }
}

