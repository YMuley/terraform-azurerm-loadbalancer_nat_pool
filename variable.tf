variable "lb_nat_pool_list" {
  type = list(any)
  default = [ ]
  description = "nat pool list"
}

variable "resource_group_output" {
  type = map(any)
  default = {}
  description = "resource group object output"
}

variable "load_balancer_output" {
  type = map(any)
  default = {}
  description = "objet list of loadbalancer output"
}