variable "aws_region" {
    description = "AWS region"
    type        = staring
}

variable "instance_count" {
    description = "Number of EC2 instances to launch"
    type        = Number
}

variable "instance_type" {
    description = "EC2 instances type"
    type        = staring
}

variable "ami_id" {
    description = "AMI ID for EC2 instances"
    type        = staring
}