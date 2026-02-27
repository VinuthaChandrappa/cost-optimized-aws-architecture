# VPC ID
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

# Subnet ID
output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

# EC2 Instance ID
output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.cost_optimized_ec2.id
}

# EC2 Private IP
output "ec2_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.cost_optimized_ec2.private_ip
}

# SSM Endpoint IDs
output "ssm_endpoint_id" {
  description = "VPC Endpoint ID for SSM"
  value       = aws_vpc_endpoint.ssm.id
}
