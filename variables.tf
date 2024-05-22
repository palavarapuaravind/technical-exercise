variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "MyResourceGroup01"
}

variable "location" {
  description = "The Azure region for resources"
  type        = string
  default     = "East US"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "example-vnet"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "example-subnet"
}

variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
  default     = "publicip"
}

variable "network_interface_name" {
  description = "The name of the network interface"
  type        = string
  default     = "nic"
}

variable "virtual_machine_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "vm"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "myakscluster"
}

variable "sql_server_name" {
  description = "The name of the SQL server"
  type        = string
  default     = "my-sql-server01"
}

variable "sql_database_name" {
  description = "The name of the SQL database"
  type        = string
  default     = "mydatabase"
}

# Additional variables for network configuration
variable "service_cidr" {
  description = "CIDR for Kubernetes services"
  default     = "10.10.0.0/16"
}

variable "dns_service_ip" {
  description = "IP within the service CIDR for DNS services"
  default     = "10.10.0.10"
}

variable "docker_bridge_cidr" {
  description = "CIDR for the Docker bridge"
  default     = "172.17.0.1/16"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "Size of the VMs in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v2"
}


