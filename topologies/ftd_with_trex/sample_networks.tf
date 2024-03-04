# data "dcloud_inventory_networks" "available_networks" {
#     topology_uid = dcloud_topology.topology_iac.id
# }

# output "networks" {
#     value = data.dcloud_inventory_networks.available_networks
# }

resource "dcloud_network" "routed_network" {
    name = "Management Network"
    description = "Routed Managed network for Jumphost and other external accessible Devices"
    inventory_network_id = "L3-VLAN-1"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "outside_network" {
    name = "Outside"
    description = "Outside Network for North South Lab Testing"
    inventory_network_id = "L3-VLAN-2"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "server_network" {
    name = "Servers"
    description = "Server Network for East-West Lab Testing"
    inventory_network_id = "L2-VLAN-1"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "inside_network" {
    name = "Inside"
    description = "Server Network for East-West Lab Testing"
    inventory_network_id = "L2-VLAN-2"
    topology_uid = dcloud_topology.topology_iac.id
}