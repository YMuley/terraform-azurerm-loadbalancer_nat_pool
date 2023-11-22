resource "azurerm_lb_nat_pool" "lb_nat_pool" {
  for_each = local.lb_nat_pool
  name = each.value.name
  resource_group_name = var.resource_group_output[each.value.resource_group_name].name
  loadbalancer_id = var.load_balancer_output[each.value.loadbalancer_name].id
  protocol = each.value.protocol
  frontend_port_start = each.value.frontend_port_start
  frontend_port_end = each.value.frontend_port_end
  backend_port = each.value.backend_port
  frontend_ip_configuration_name = each.value.frontend_ip_configuration_name
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  floating_ip_enabled = each.value.floating_ip_enabled
  tcp_reset_enabled = each.value.tcp_reset_enabled
}
