
resource "dcloud_topology" "topology_iac" {
    name = "FTD with TREX"
    description = "Topology to Pass Synthetic Traffic to FTD using Cisco TRex"
    notes = "this is a topology created using IaC via Terraform"
    datacenter = var.tb_datacenter
}

resource "dcloud_remote_access" "remote_access" {
  any_connect_enabled  = true
  endpoint_kit_enabled = false
  topology_uid         = dcloud_topology.topology_iac.id
}