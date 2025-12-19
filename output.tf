output "aws_ip" {
  value = aws_instance.aws_web.public_ip
}

output "gcp_ip" {
  value = google_compute_instance.gcp_web.network_interface[0].access_config[0].nat_ip
}
