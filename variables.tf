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

variable "tenant_id" {
    default = "4dcb8e2a-76c6-49f3-aff0-f3504b6c9d61"
}

variable "subscription_id" {
    default = "e3bf1520-631c-4200-b6e7-dc6ade33c0b7"
}
