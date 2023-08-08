data "terraform_remote_state" "vadapav" {
  backend = "remote"
  config = {
    organization = "wipro11"
    workspaces = {
      name = "terraformwipro"
    }
  }
}

resource "aws_instance" "statecheck" {

    ami = var.amiid
    instance_type = var.instancetype
    tags = {
        Name = "statecheck"
    }
}
