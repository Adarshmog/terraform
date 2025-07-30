variable "matrix" {
  type    = list(list(number))
  default = [[1,2],[3,4]]
}
output "element" {
  value = var.matrix[1][1] # Should be 4
}
