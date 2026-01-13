variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "key_name" {
  description = "The name of the AWS key pair"
  type        = string
  default     = "xfusion-kp"
}

variable "private_key_path" {
  description = "The local path where the private key pem file will be saved"
  type        = string
  default     = "./xfusion-kp.pem"
}