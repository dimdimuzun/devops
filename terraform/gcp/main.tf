module "network" {
  source = "./modules/network/"
  vpc_project_name = var.project_name
  jenkins_subnet_region = var.region
  jenkins_subnet_ip_cidr_range = var.jenkins_ip_cidr_range
  firewall_rules = var.jenkins_firewall_rules
}

module "gce" {
  source = "./modules/gce/"
  vm_project_name = var.project_name
  gce_region = var.region
  vm_subnetwork = module.network.jenkins_subnet_name
  ssh_pub_key_file = var.gce_vm_ssh_pub_key_file
  vm_properties = var.gce_vm_properties
}

# output "gce_vm_ssh_pub_key" {
#   value = module.gce.ssh_pub_key
# }

# output "message" {
#   value = module.gce.message
# }

# output "vm_properties" {
#   value = module.gce.vm_properties
# }

# output "region" {
#   value = var.region
# }

# output "project" {
#   value = var.project_name
# }