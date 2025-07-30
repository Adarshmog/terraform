terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "This is file1 created by Terraform."
}

