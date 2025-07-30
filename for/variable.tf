variable "filename" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "filnamemap" {
  type = map(string)
  default = {
    name    = "a"
    address = "b"
  }
}
