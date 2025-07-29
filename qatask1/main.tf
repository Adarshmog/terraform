resource "null_resource" "create_folder" {
  provisioner "local-exec" {
    command = "mkdir -p demo-folder"
  }
}
