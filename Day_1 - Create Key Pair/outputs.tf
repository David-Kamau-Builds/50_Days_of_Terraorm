output "key_name" {
  description = "The name of the created AWS key pair"
  value       = aws_key_pair.xfusion_kp.key_name
}