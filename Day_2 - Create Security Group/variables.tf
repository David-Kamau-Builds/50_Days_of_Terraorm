variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
  default     = "devops-sg"
}