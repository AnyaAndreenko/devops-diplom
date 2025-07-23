terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "tf-state-irina-devops-20250720" # замени на свой!
    region                      = "ru-central1"
    key                         = "terraform.tfstate"
    access_key                  = null
    secret_key                  = null
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}