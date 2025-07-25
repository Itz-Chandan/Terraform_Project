### Recommended: Using user data to run scripts inside the remote servers instead of provisioners

resource "aws_instance" "web" {
    ami           = var.ami_id
    instance_type = var.instance_type

    user_data = file("startup-script.sh")

    tags = {
        Name = "WebServer"
    }
}


### NOT-Recommended: ### Recommended: Using provisioners to run scripts inside the remote servers

resource "aws_instance" "web" {
    ami           = var.ami_id
    instance_type = var.instance_type

    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install -y nginx"
        ]
    }

    connection {
        type        = "ssh"
        user        = "ubuntu"
        private_key = file("~/.ssh/id_rsa")
        host        = self.public_ip
    }
}