output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "Public IP addresses assigned to the instances"
}
