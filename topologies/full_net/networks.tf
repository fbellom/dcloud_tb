resource "dcloud_network" "common_network" {
    name = "Common Network"
    description = "Routed Managed network for Jumphost and other external accessible Devices"
    inventory_network_id = "L3-VLAN-1"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "branch_outside_network" {
    name = "Branch_Outside"
    description = "Branch Outside Network for North South Lab Testing"
    inventory_network_id = "L3-VLAN-2"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "hq_outside_network" {
    name = "HQ_Outside"
    description = "HQ Outside Network for North South Lab Testing"
    inventory_network_id = "L3-VLAN-3"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "infra_network" {
    name = "Servers"
    description = "Infra Server Network"
    inventory_network_id = "L2-VLAN-1"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "datacenter_network" {
    name = "Webapps"
    description = "Web and Apps Server Network"
    inventory_network_id = "L2-VLAN-2"
    topology_uid = dcloud_topology.topology_iac.id
}

resource "dcloud_network" "branch_inside_network" {
    name = "Inside"
    description = "Branch Inside Network"
    inventory_network_id = "L2-VLAN-3"
    topology_uid = dcloud_topology.topology_iac.id
}