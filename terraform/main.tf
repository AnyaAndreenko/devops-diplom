terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.80"
    }
  }
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  access_key = var.access_key
  secret_key = var.secret_key
  zone      = "ru-central1-a"
}

resource "yandex_storage_bucket" "tf_state" {
  bucket     = "my-tf-state-bucket"
  acl        = "private"
}
