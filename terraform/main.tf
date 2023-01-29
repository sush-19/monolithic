provider "aws" {
region = "us-east-1"
access_key = "AKIAZLUXQ5K3RROYHPM3"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "my-instance"
}
}
