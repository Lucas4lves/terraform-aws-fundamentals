terraform {
    required_providers{
		aws = {
		source = "hashicorp/aws"
		version = "~> 4.0"
		      }
		}
}

provider "aws" {
    region="us-west-2"
	profile="default"	
}

resource "aws_instance" "app_server" {
		ami = "ami-0735c191cf914754d"
		instance_type = "t2.micro"
		key_name="terraform"
		user_data= <<EOF
					 #!bin/bash
					 cd /home/ubuntu
					 echo "<h1>Alou Terraform</h1>"
					 nohup busybox httpd -f -p 8080
					 EOF
		tags = {
		    Name = "Teste de novo"
		}
}
