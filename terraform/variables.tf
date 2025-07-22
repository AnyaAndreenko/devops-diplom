variable "cloud_id" {}
variable "folder_id" {}
#variable "token" {}
variable "bucket_name" {
  default = "my-tf-state-bucket"
}
variable "service_account_key_file"  {
    default =  file("~/authorized_key.json")
}
