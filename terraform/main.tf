terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.80"
    }
  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = "ru-central1-a"
}

resource "yandex_storage_bucket" "tf_state" {
  bucket     = "my-tf-state-bucket"
  access_key = var.access_key
  secret_key = var.secret_key
  acl        = "private"
}
