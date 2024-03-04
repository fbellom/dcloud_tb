resource "dcloud_network" "common_network" {
    name = "Common Network"
    description = "Routed Managed network for Jumphost and other external accessible Devices"
    inventory_network_id = "L3-VLAN-1"
    topology_uid = dcloud_topology.topology_iac.id
}


resource "dcloud_network" "outside_network" {
    name = "Outside"
    description = "HQ Outside Network for North South Lab Testing"
    inventory_network_id = "L3-VLAN-4"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "inside_network" {
    name = "Inside"
    description = "Inside"
    inventory_network_id = "L2-VLAN-11"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "traffgen_network" {
    name = "Traffic Generation"
    description = "Traffic Generation"
    inventory_network_id = "L2-VLAN-20"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "dmz_network" {
    name = "dmz"
    description = "DMZ Network"
    inventory_network_id = "L2-VLAN-16"
    topology_uid = dcloud_topology.topology_iac.id
}
