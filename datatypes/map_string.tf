variable "category_data" {
  type = map(list(string))
  default = {
    fruits  = ["apple", "banana", "grape"]
    colors  = ["red", "blue", "green"]
    cities  = ["Bangalore", "Chennai"]
  }
}

output "category_output" {
  value = var.category_data
}

output "first_fruit" {
  value = var.category_data["fruits"][0]
}

output "second_city" {
  value = var.category_data["cities"][1]
}

