output "elastic_ip" {
  value       = aws_eip.devops_eip.public_ip
  description = "The public IP address of the allocated Elastic IP."
}