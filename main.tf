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
}
