terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}
resource "random_string" "sample_string" {
  length  = 12
  upper   = true
  lower   = true
  numeric = true
  special = false
}
resource "random_integer" "sample_int" {
  min = 10
  max = 100
}
resource "random_uuid" "sample_uuid" {}
resource "random_id" "sample_id" {
  byte_length = 6
}
resource "random_password" "sample_password" {
  length  = 14
  special = true
  upper   = true
  lower   = true
  numeric  = true
}
resource "random_pet" "sample_pet" {
  length    = 2
  separator = "-"
}

