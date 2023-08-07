resource "aws_instance" "vm1" {
    ami = "ami-0ded8326293d3201b"
    instance_type ="t2.small"
    tags = {
      Name ="test1"
   }
}

terraform {
  cloud {
    organization = "priar"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["terraformclouddemo"]
    }
  }
}
