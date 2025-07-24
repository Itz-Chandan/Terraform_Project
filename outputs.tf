output "instance_ids" {
    description = "IDs of the EC2 instance"
    value       = aws_instance.web[*].id
}

output "instance_publice_ips" {
    description = "Public IPs of the EC2 instances"
    value       = aws_instance.web[*].Public_ip
}