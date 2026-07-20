locals {

  storage_account_name = lower(
    "st${var.application}${var.environment}${var.instance}"
  )

  standard_tags = {

    ManagedBy = "Terraform"

    Environment = var.environment

  }

  common_tags = merge(
    local.standard_tags,
    var.tags
  )
}