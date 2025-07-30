variable "file_map" {
  type = map(string)
  default = {
    "a.txt" = "Alpha content"
    "b.txt" = "Bravo content"
    "c.txt" = "Charlie content"
  }
}

resource "local_file" "foreach_example" {
  for_each = var.file_map
  filename = each.key
  content  = each.value
}

