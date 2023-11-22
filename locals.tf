locals {
  lb_nat_pool = {for nat_pool in var.lb_nat_pool_list: nat_pool.name => nat_pool}
}