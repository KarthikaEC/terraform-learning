variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "account_tier" {

  type = string

  default = "Standard"

  validation {

    condition = contains(

      ["Standard","Premium"],

      var.account_tier

    )

    error_message = "Tier must be Standard or Premium."

  }

}

variable "account_replication_type" {
  description = "Replication Type"
  type        = string

  default = "LRS"
}

variable "tags" {
  description = "Resource Tags"

  type = map(string)

  default = {}
}