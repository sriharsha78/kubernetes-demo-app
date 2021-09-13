# Azure Resources Location
variable "location" {
    description = "Azure dc location you will deploy the infrastructure"
    default     = "eastus"
}


# resource group
variable "cluster_resource_group" {
    description = "Azure resource group name"
    default     = "k8shelm"
}


# Network
variable "network_name" {
  description   = "Virtual Network Name"
  default       = "upskilling"
}

variable "vnet_cidr" { 
  description   = "address space for the virtual network"
  default       = "192.168.0.0/16" 
}

variable "subnet_name" {
  description   = "Virtual Network Subnet Name"
  default       = "default"
}

variable "subnet_cidr" { 
  default       = ["192.168.1.0/24"]
  description   = "virtual network subnet address space"
}

# Storage Account
variable  "storage_account_name" {
  default       = "k8shelm" 
  description   = "storage account name"
}

# Jenkins VM

variable "jenkins_vm_name" {
  description   = "Jenkins VM name"
  default       = "jenkinsvm"
}

variable "jenkins_vm_size" {
  description   = "Jenkins VM Type"
  default       = "Basic_A1"
}


# Linux Variables
variable "admin_username" {
  description = "linux admin username"
  default = "vagrant"
}

variable "ssh_key" {
  description = "ssh key"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHuRWKHmy7rpBaV2qdVlOa6qIbLcRsVdd2y0m6E9ZwhYGlYstx0dppaBxPs/4SC7kMw4C8izA0rxWeWJd3k/JjYvQIYCE5Q2J9Nwqh/c6z60/6yOz284oNF5fF8hsCvDpkvF5RuKQ++4enulSAd1Uq0PKloHak5fZ3JrTEp90xKY5A7YwIBoQ0d2Ba7VNK++sdm5zQEVvGiFqb3VuCD4RzeyP15U4P8hjBbtnsVyHuWln2HddImR8qP8qKlPWNmYDl2JMZzis/RxWpzF28tRsJylEShnSEfX4M7PEzL4efkujcHF2OW9m9nEGMpIwkg85/n1wCvrW/4rWaMCbVaSsn"
}

# Aks cluster
variable "aks_name" {
  description = "Name of the AKS service created" 
  default = "k8s-cluster"
}

variable "aks_dns_prefix" {
  description = "dns prefix"
  default = "k8sdemo"
}

# Subscription
variable "subscription_id" {
    description = "Azure subscription ID"
    default = "362f433a-2029-4b3d-a505-d5ef1db433a2"
}

variable "client_id" {
    description = "Azure Service Principal id (client id)"
    default = "e051f9ce-3d67-4657-afe8-79de28544193"
}

variable "client_secret" {
    description = "Azure client Service Principal secret (client secret)"
    default = "41pV7ai2XEiw3W9EdnNGW7FRXsKr.v9wTl"
}

variable "tenant_id" {
    description = "Azure tenant or directory id"
    default = "0d620bba-e1f5-477d-ad93-094123f51b7a"
}

# Resources Tags
variable "environment_tag" {
  description = "type of environment Production, development, QA"
  default = "development"
}
