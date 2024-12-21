module "vpc" {
  for_each = var.vpc
  source = "https://github.com/surendraalamuru22/tf-vpc"
  cidr_block = each.value.cidr_block
}