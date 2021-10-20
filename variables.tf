variable "tablename" {
  type        = string
  description = "the name of the route table"
}

variable "location" {
  type        = string
  description = "location of your resource group"
}

variable "rgname" {
  type        = string
  description = "the name of the resource group in which to deploy the resource groups"
}

variable "AssocSubnet_id" {
  type = string
  description = "the resource ID of the GatewaySubnet subnet"
}

variable "disable_bgp_rt_prop" {
  type        = bool
  description = "define the project name ex. prj02"
}