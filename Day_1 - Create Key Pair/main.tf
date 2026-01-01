resource "tls_private_key" "xfusion_kp" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "xfusion_kp" {
  key_name   = var.key_name
  public_key = tls_private_key.xfusion_kp.public_key_openssh
}

resource "local_file" "xfusion_private_key" {
  filename        = var.private_key_path
  content         = tls_private_key.xfusion_kp.private_key_pem
  file_permission = "0400"
}
