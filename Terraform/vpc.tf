resource "aws_vpc" "Anwar_VPC_1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Anwar VPC Project"
  }
}
