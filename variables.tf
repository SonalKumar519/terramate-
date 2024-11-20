variable "ami_id" {
  description = "AMI ID to use for EC2 instance"
  type        = string
  default     = "ami-04b54ebf295fe01d7"  # Example default AMI ID (replace with a valid one for your region)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "m6i.24xlarge"  # Default EC2 instance type (adjust as needed)
}
