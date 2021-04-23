terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "BrumeOrg"
    workspaces {
      name = "hashicat-aws"
      # This is a test
    }
  }
}

