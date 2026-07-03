variable "application" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string

  validation {
    condition     = contains(["dev", "test", "qa", "prod"], var.environment)
    error_message = "Environment must be dev, test, qa or prod."
  }
}

variable "instance" {
  description = "Instance number"
  type        = string
  default     = "001"
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "account_tier" {
  type    = string
  default = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "Account tier must be Standard or Premium."
  }
}

variable "account_replication_type" {
  type    = string
  default = "LRS"

  validation {
    condition = contains(
      ["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"],
      var.account_replication_type
    )
    error_message = "Invalid replication type."
  }
}