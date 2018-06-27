# AWS S3 Terraform module

Terraform module which creates S3 resources on AWS.

These types of resources are supported:

* [S3 Bucket](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)

## Usage

```hcl
module "debug-bucket" {
  source = "github.com/oded-dd/terraform-aws-s3"

  name_prefix = "logs-debug"

  # ... omitted
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acceleration_status | (Optional) Sets the accelerate configuration of an existing bucket | string | `Suspended` | no |
| acl | (Optional) The canned ACL to apply | string | `private` | no |
| cors_rule | (Optional) A rule of Cross-Origin Resource Sharing | list | `<list>` | no |
| create | Whether to create this resource or not | string | `true` | no |
| force_destroy | (Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error | string | `false` | no |
| lifecycle_rule | (Optional) A configuration of object lifecycle management | list | `<list>` | no |
| logging | (Optional) A settings of bucket logging | list | `<list>` | no |
| name_prefix | (Required) Creates a unique bucket name beginning with the specified prefix | string | - | yes |
| policy | (Optional) A valid bucket policy JSON document | string | `` | no |
| region | (Optional) If specified, the AWS region this bucket should reside in | string | `` | no |
| replication_configuration | (Optional) A configuration of replication configuration | list | `<list>` | no |
| request_payer | (Optional) Specifies who should bear the cost of Amazon S3 data transfer | string | `BucketOwner` | no |
| server_side_encryption_configuration | (Optional) A configuration of server-side encryption configuration | list | `<list>` | no |
| tags | (Optional) A mapping of tags to assign to the bucket | map | `<map>` | no |
| versioning | (Optional) A state of versioning | list | `<list>` | no |
| website | (Optional) A website object | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_s3_bucket_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| this_s3_bucket_bucket_domain_name | The bucket domain name. Will be of format bucketname.s3.amazonaws.com |
| this_s3_bucket_bucket_regional_domain_name | The bucket region-specific domain name. The bucket domain name including the region name |
| this_s3_bucket_hosted_zone_id | The Route 53 Hosted Zone ID for this bucket's region |
| this_s3_bucket_id | The name of the bucket |
| this_s3_bucket_region | The AWS region this bucket resides in |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
