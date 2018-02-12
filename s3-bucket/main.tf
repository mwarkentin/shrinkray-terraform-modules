resource "aws_s3_bucket" "bucket" {
  bucket = "${var.name}"
  region = "${var.region}"
  acl    = "${var.acl}"

  versioning {
    enabled = "${var.versioning_enabled}"
  }

  logging {
    target_bucket = "${var.logging_target_bucket}"
    target_prefix = "aws/s3/${var.name}/"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${var.kms_master_key_id}"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}
