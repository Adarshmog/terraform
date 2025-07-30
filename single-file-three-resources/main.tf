terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "This is the first file."
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "This is the second file."
}

resource "local_file" "file3" {
  filename = "file3.txt"
  content  = "This is the third file."
}

