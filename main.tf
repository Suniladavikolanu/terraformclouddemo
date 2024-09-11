data "terraform_remote_state" "vadapav" {
  backend = "remote"
  config = {
    organization = "morningstardemo2"
    workspaces = {
      name = "morningstar"
    }
  }
}



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

resource "aws_s3_bucket" "b341246" {
  bucket = "morningstar-cloudbucket31431"
}

resource "aws_s3_bucket" "b12324" {
  bucket = "morningstar-cloudbucket5121"
}
