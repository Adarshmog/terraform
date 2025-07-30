resource "azurerm_linux_virtual_machine" "myvm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.nic_id]
  size                  = "Standard_B1s"

  admin_username                  = var.admin_username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key_path)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

resource "azurerm_managed_disk" "datadisk" {
  name                 = "myDataDisk"
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.datadisk_size
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach" {
  managed_disk_id    = azurerm_managed_disk.datadisk.id
  virtual_machine_id = azurerm_linux_virtual_machine.myvm.id
  lun                = 0
  caching            = "ReadWrite"
}

