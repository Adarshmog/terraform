variable "my_set" {
  type    = set(number)
  default = [1, 2, 3, 1, 2, 4]
}


output "set_num" {
value = var.my_set
}
