resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Jenkins-demo-vpc-terraform"
    Purpose = "Jenkins Terraform Demo"
  }
}
