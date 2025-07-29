variable "flexible" {
  type    = any
  default = [1, "two", true]
}

output "any_output" {
value = var.flexible
}
