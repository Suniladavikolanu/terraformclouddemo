resource "aws_instance" "vm1" {
    ami = "ami-0ded8326293d3201b"
    instance_type ="t3.medium"
    tags = {
      Name ="test1"
   }
}
