output "ec2_public_ip" {
  description = "Public IP address of the deployed EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "ssh_connection_string" {
  description = "Command to SSH directly into the instance"
  value       = "ssh -i ~/.ssh/aws_ec2_key ubuntu@${aws_instance.web_server.public_ip}"
}
