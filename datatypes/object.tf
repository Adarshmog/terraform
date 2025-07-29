variable "person" {
  type = object({
    name     = string
    age      = number
    is_active = bool
  })
  default = {
    name      = "Adarsh"
    age       = 25
    is_active = true
  }
}

output "person_name" {
  value = var.person.name
}

