resource "aws_vpc" "Anwar_VPC_1" {
  instance_tenancy = "default"
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "Anwar VPC Project"
  }
}