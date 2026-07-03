locals {

  standard_tags = {

    ManagedBy = "Terraform"

    CreatedBy = "Platform Team"

  }

  common_tags = merge(

    local.standard_tags,

    var.tags

  )

}