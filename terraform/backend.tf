terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "my-tf-state-bucket-andreenkoanya" 
    region                      = "ru-central1-a"
    key                         = "terraform.tfstate"
    access_key                  = null
    secret_key                  = null
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}