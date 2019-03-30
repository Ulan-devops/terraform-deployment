resource "kubernetes_secret" "vault_secret" {
  metadata {
    name      = "vault-secret"
    namespace = "tools"
  }
  data {
    password = "TVJYZ2tTeGZ0c2pqeUlqYkF4Nk9MS0Rmbgo="
  }
  type = "Opaque"
}