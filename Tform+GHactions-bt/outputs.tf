output "instance_public_ips" {
  description = "Public IP s of EC2 instances"
  value       = aws_instance.instanz-201[*].public_ip
}