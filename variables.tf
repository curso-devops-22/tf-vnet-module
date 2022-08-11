variable "rg-name" {
  type = string
}
variable "rg-location" {
  type = string
}

variable "vnet-name" {
  type = string
}

variable "address-space" {
  type = list(string)
}

variable "subnet-name" {
  type = list(string)
}

variable "subnet-prefixes" {
  type = list(string)
}