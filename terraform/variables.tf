variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefix for naming resources"
  type        = string
  default     = "devops-aws-blueprint"
}

variable "instance_type" {
  description = "EC2 instance size eligible for AWS Free Tier"
  type        = string
  default     = "t3.micro"
}

variable "public_key_path" {
  description = "Path to the local SSH public key to upload to AWS"
  type        = string
  default     = "~/.ssh/aws_ec2_key.pub"
}
