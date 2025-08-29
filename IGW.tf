resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Anwar_VPC_1.id
  tags = {
      Name = "IGW"
  }
}