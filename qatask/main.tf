resource "local_file" "my_file" {
  filename = "${path.module}/mydir/sample.txt"
  content  = "This is a test file created using Terraform."
}

