
resource "dcloud_topology" "topology_iac" {
    name = "Jaguar IaC Demo"
    description = "An Enterprise Topology with Security Components"
    notes = "this is a topology created using Terraform. TB Templates Collection .frbello at cisco dot com"
    datacenter = var.tb_datacenter
}

resource "dcloud_remote_access" "remote_access" {
  any_connect_enabled  = true
  endpoint_kit_enabled = false
  topology_uid         = dcloud_topology.topology_iac.id
}