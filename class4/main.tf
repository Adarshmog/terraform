provider "random" {}

resource "random_id" "from_tfvars" {
  byte_length = var.byte_length_from_tfvars
}

resource "random_pet" "from_cli" {
  length = var.pet_length_from_cli
}

resource "random_string" "from_env" {
  length  = var.str_length_from_env
  upper   = true
  lower   = true
  numeric = true
  special = false
}
output "random_id_value" {
  value = random_id.from_tfvars.id
}

output "random_pet_name" {
  value = random_pet.from_cli.id
}

output "random_string_value" {
  value = random_string.from_env.id
}

