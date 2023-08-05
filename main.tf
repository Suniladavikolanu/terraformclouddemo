resource "aws_instance" "vm1" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type ="t2.micro"
    tags = {
        Name ="test1"
    }
}