terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "4.16"

}

}
required_version = ">= 1.2.0"

}

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIATOHSUWQGNQUGH7VJ"
  secret_access_key = "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"
}

resource "aws_instance" "my_ec2_instance" {
        count = 1
        ami = "ami-024e6efaf93d85776"
        instance_type = "t2.micro"
        tags = {
                Name = "TerraformBatch"
}


}

output "ec2_public_ips" {
        value = aws_instance.my_ec2_instance[*].public_ip

}
