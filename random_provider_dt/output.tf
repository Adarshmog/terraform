output "string_output" {
  value = random_string.sample_string.result
}

output "int_output" {
  value = random_integer.sample_int.result
}

output "uuid_output" {
  value = random_uuid.sample_uuid.result
}

output "id_output" {
  value = random_id.sample_id.b64_std
}

output "password_output" {
  value = random_password.sample_password.result
  sensitive = true
}

output "pet_output" {
  value = random_pet.sample_pet.id
}

