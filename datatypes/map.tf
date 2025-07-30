variable "my_map" {
  type = map(any)
  default = {
    name     = "adi"
    id       = 123
    isactive = true
  }
}
variable "string_map" {
  type = map(string)
  default = {
    key1 = "val1"
    key2 = "val2"
  }
}

output "name_output" {
  value = var.my_map["name"]
}
