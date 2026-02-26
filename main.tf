resource "aws_instance" "cost_optimized_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private_subnet.id

  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = var.common_tags
}