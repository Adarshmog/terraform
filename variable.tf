variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "terraformrg"
}

variable "location" {
  description = "The Azure region"
  type        = string
  default     = "westus2"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "adarshVM"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "adarsh"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "nic_id" {
  description = "ID of the existing Network Interface"
  type        = string
  default     = "/subscriptions/e6273c17-de66-4371-9b4d-70e10906daf0/resourceGroups/terraformrg/providers/Microsoft.Network/networkInterfaces/myNIC"
}

variable "datadisk_size" {
  description = "Size of the data disk in GB"
  type        = number
  default     = 10
}
