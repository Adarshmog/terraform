variable "filenames" {
  type    = list(string)
  default = ["file1.txt", "file2.txt", "file3.txt"]
}

resource "local_file" "count_example" {
  count    = length(var.filenames)
  filename = var.filenames[count.index]
  content  = "This is file number ${count.index + 1}"
}

