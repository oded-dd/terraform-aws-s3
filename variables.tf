variable "create" {
  description = "Whether to create this resource or not"
  default     = true
}

variable "bucket_name" {
  description = "(Required) Creates a unique bucket name" 
  type        = "string"
}

variable "acl" {
  description = "(Optional) The canned ACL to apply"
  type        = "string"
  default     = "private"
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = ""
}
  
variable "force_destroy" {
  description = "(Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  type        = "string"
  default     = false
}

variable "website" {
  description = "(Optional) A website object"
  type        = "list"
  default     = []
}

variable "cors_rule" {
  description = "(Optional) A rule of Cross-Origin Resource Sharing"
  type        = "list"
  default     = []
}

variable "versioning" {
  description = "(Optional) A state of versioning"
  type        = "list"
  default     = []
}

variable "logging" {
  description = "(Optional) A settings of bucket logging"
  type        = "list"
  default     = []
}

variable "lifecycle_rule" {
  description = "(Optional) A configuration of object lifecycle management"
  type        = "list"
  default     = []
}

variable "acceleration_status" {
  description = "(Optional) Sets the accelerate configuration of an existing bucket"
  type         = "string"
  default      = "Suspended"
}

variable "region" {
  description = "(Optional) If specified, the AWS region this bucket should reside in"
  type        = "string"
  default     = ""
}

variable "request_payer" {
  description = "(Optional) Specifies who should bear the cost of Amazon S3 data transfer"
  type        = "string"
  default     = "BucketOwner"
}

variable "replication_configuration" {
  description = "(Optional) A configuration of replication configuration"
  type        = "list"
  default     = []
}

variable "server_side_encryption_configuration" {
  description = "(Optional) A configuration of server-side encryption configuration"
  type        = "list"
  default     = []
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket"
  type        = "map"
  default     = {}
}
