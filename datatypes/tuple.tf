variable "my_tuple" {
  type = tuple([string, number, bool])
  default = ["adi", 101, true]
}
output "tuple_test" {
  value = var.my_tuple[1] # Should be 101
}

