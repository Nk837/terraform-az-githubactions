variable "resource_group_name" {
  type    = list(string)
  default = ["test-rg"]
}

variable "location" {
  type    = list(string)
  default = ["East US"]
}

variable "storage_account_name" {
  type    = list(string)
  default = ["testaccount837"]
}

variable "container_name" {
  type    = list(string)
  default = ["tfstate12"]
}

variable "tenant_id" {}

variable "subscription_id" {}
