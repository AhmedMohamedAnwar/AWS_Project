resource "aws_eip" "ngw1_eip" {
  domain = "vpc"
}
resource "aws_eip" "ngw2_eip" {
  domain = "vpc"
}
resource "aws_nat_gateway" "NGW1" {

  allocation_id     = aws_eip.ngw1_eip.id
  subnet_id         = aws_subnet.Public_Subnet_zone1.id

  tags = {
    Name = "NGW for subnet_zone1"
  }
  depends_on = [aws_internet_gateway.IGW]

}

resource "aws_nat_gateway" "NGW2" {

  allocation_id     = aws_eip.ngw2_eip.id
  subnet_id         = aws_subnet.Public_Subnet_zone2.id

  tags = {
    Name = "NGW for subnet_zone2"
  }
  depends_on = [aws_internet_gateway.IGW]

}