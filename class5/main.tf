locals {
student_subjects = var.student_subjects 
}

resource "random_pet" "student_pet" {
  for_each = local.student_subjects

  length    = 2
  separator = "-"
}

output "student_pets" {
  value = {
    for name, pet in random_pet.student_pet :
    name => pet.id
  }
}

output "adarsh_first_subject" {
  value = var.student_subjects["adarsh"][0]
}

output "maxi_second_subject" {
value = var.student_subjects["maxi"][1]
}
output "gia_all_subjects" {
  value = var.student_subjects["gia"]
}
