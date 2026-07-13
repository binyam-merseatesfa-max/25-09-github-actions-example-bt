output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.instanz-101[*].public_ip
}

output "instance_id" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.instanz-101[*].id
}
