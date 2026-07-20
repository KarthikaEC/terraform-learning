variable "application" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "owner" {
  description = "Resource owner"
  type        = string
}

variable "instance" {
  description = "Instance number"
  type        = string
  default     = "001"
}