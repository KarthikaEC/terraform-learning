module "resource_group" {

  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage_account" {

  source = "../../modules/storage-account"

  application         = var.application
  environment         = var.environment
  instance            = var.instance

  location            = var.location

  resource_group_name = module.resource_group.name

  tags = {
    Owner = var.owner
  }

}