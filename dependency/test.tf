resource "local_file" "test_file" {
  filename = "file_v2.txt"
  content  = "This is version 2"

  lifecycle {
    prevent_destroy = true


  }
}

