variable "resource_group_name" {
  default = "rg-createdbyTF"
}

variable "location_name" {
  default = "northcentralus"
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "ssh_user" {
  type        = string
  description = "Usuario para hacer ssh"
  default     = "azureuser"
}

variable "registry_name" {
  type        = string
  description = "Nombre del registry de imágenes de contenedor"
  default     = "acrjego"
}

variable "registry_sku" {
  type        = string
  description = "Tipo de SKU a utilizar por el registry. Opciones válidas: Basic, Standard, Premium."
  default     = "Basic"
}