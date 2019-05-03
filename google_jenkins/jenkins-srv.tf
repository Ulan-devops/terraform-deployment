resource "kubernetes_service" "jenkins-service" {
  metadata {
    name = "jenkins-service"
    namespace = "tools"
  }

  spec {
    selector { app = "jenkins-pod" }
    port {

      protocol = "TCP"
      port = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}
