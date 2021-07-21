variable "subnet_id" {
  type        = string
  description = "ID of the subnet where the EMR cluster will be created"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID of the network"
}

variable "bucket_name_for_root_directory" {
  type        = string
  description = "S3 bucket name for storing root directory."
}

variable "bucket_name_for_logs" {
  type        = string
  description = "S3 bucket name for cluster logs."
}

variable "master_name_prefix" {
  type        = string
  description = "A string to prepend to names of master resources created by this example"
}

variable "core_name_prefix" {
  type        = string
  description = "A string to prepend to names of core resources created by this example"
}

variable "service_access_name_prefix" {
  type        = string
  description = "A string to prepend to names of service access resources created by this example"
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks to attach to security groups for ingress"
  type = list(string)
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks to attach to security groups for egress"
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources created by this example."
  default = {
    Author      = "Tamr"
    Environment = "Example"
  }
}
