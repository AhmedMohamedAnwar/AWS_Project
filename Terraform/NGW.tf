resource "aws_nat_gateway" "NAT_gatway" {


tags = {
    Name = "IGW"
  }
}