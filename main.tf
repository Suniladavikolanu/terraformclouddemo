


terraform {
  cloud {
    organization = "morningstardemo2"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["morningstar"]
    }
  }
}

resource "aws_s3_bucket" "morningstar=b1" {
  bucket = "morningstar-cloudbucket31431"
}

resource "aws_s3_bucket" "morningstar-b2" {
  bucket = "morningstar-cloudbucket5121"
}
