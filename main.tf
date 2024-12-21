module "vpc" {
  for_each = var.vpc
  source = "./vendor/modules/vpc"
  cidr_block = each.value.cidr_block
}

