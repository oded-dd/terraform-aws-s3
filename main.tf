resource "aws_s3_bucket" "this" {
  count                                = "${var.create ? 1 : 0}"

  bucket                               = "${var.bucket_name}"
  acl                                  = "${var.acl}"
  policy                               = "${var.policy}"
  force_destroy                        = "${var.force_destroy}"
  website                              = "${var.website}"
  cors_rule                            = "${var.cors_rule}"
  versioning                           = "${var.versioning}"
  logging                              = "${var.logging}"
  lifecycle_rule                       = "${var.lifecycle_rule}"
  acceleration_status                  = "${var.acceleration_status}"
  region                               = "${var.region}"
  request_payer                        = "${var.request_payer}"
  replication_configuration            = "${var.replication_configuration}"
  server_side_encryption_configuration = "${var.server_side_encryption_configuration}"

  tags                                 = "${merge(var.tags, map("Name", format("%s", var.bucket_name)))}"
}
