terraform {
  backend "s3" {}
}
provider "http" {}

provider "vault" {
  address         = "https://172.31.92.60:8200"
  token           = var.vault_token
  skip_tls_verify = true
}