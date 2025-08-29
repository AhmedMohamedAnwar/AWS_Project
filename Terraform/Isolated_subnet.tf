resource "aws_subnet" "Isolated_Subnet_zone1" {
  vpc_id     = aws_vpc.Anwar_VPC_1.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-east-1a"
    tags = {
    Name = "Isolated subnet zone 1"
  }
}
resource "aws_subnet" "Isolated_Subnet_zone2" {
  vpc_id     = aws_vpc.Anwar_VPC_1.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Isolated subnet zone 2"
  }
}