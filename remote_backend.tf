terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "BrumeOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}

