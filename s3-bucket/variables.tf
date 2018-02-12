variable "name" {}

variable "region" {
  default = "us-east-2"
}

variable "acl" {
  default = "private"
}

variable "versioning_enabled" {
  default = "true"
}

variable "logging_target_bucket" {}

variable "kms_master_key_id" {}
