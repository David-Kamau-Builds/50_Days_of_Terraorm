variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/24"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "datacenter-vpc"
}