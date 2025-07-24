provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "web" {
    count       = var.aws_instance_count
    ami         = var.ami_id
    aws_instance_type = var.aws_instance_type

    tags = {
        Name = "WebInstance-${count.index}"
    }
}