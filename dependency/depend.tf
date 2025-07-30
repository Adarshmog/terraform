resource "local_file" "f3" {
  filename = "123.txt"
  content  = "test"
  lifecycle {
    create_before_destroy = true
  }
}
resource "local_file" "fab3" {
  filename = "1234.txt"
  content  = "test"
}
resource "local_file" "f2" {
  filename = "12325.txt"
  content  = local_file.f3.id
}

resource "local_file" "f4" {
  filename = local_file.f2.id
  content  = local_file.f3.id
}



resource "local_file" "fa3" {
  filename = "123.txt"
  content  = "test"
}

resource "local_file" "f1" {
  filename = "15342541"
  content  = "sgfj"
}

resource "local_file" "f5" {
  filename   = "rjgzhjb"
  content    = "sgfj"
  depends_on = [local_file.fa3, local_file.f1]
}

