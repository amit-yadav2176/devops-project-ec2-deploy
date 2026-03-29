provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t2.micro"
  key_name      = "mykey"

  user_data = <<-EOF
              #!/bin/bash
              yum install docker -y
              service docker start
              EOF

  tags = {
    Name = "DevOps-EC2"
  }
}
