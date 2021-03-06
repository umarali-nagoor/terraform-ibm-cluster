######################################################
#IBM-Cloud Authentication Credentials
######################################################

variable "ibmcloud_api_key" {
  type        = string
  description = "IBM-Cloud API Key"
}
variable "ibm_region" {
  type        = string
  description = "IBM-Cloud Region"
}
variable "resource_group" {
  type        = string
  description = "Name of Resource Group. If null default resource group is considered"
  default     = null
}

######################################################
#IBM-Cloud Object Storage Variables
######################################################
variable "cos_instance_name" {
  description = "Name of Object Storage Instance. If null it creates an instance with `<var.resource_prefix>-cos"
  type        = string
  default     = null
}

######################################################
#IBM-Cloud Cluster Variables
######################################################
variable "resource_prefix" {
  type        = string
  description = "Prefix to the resource names"
}
variable "flavor" {
  description = "The flavor of the VPC Cluster or worker node."
  type        = string
  default     = "bx2.4x16"
}
variable "ocp_version" {
  type        = string
  description = "Specify the Openshift version"
  default     = "4.6.23_1540_openshift"
}
variable "ocp_entitlement" {
  type        = string
  description = "Value that is applied to the entitlements for OCP cluster provisioning"
  default     = "cloud_pak"
}
variable "disable_public_service_endpoint" {
  description = "Disable the public service endpoint to prevent public access to the master"
  type        = bool
  default     = false
}
variable "worker_nodes_per_zone" {
  type        = number
  description = "The number of worker nodes per zone."
  default     = 3
}
variable "create_timeout" {
  type        = string
  description = "Custom Creation timeout for Cluster"
  default     = null
}

######################################################
#IBM-Cloud IAM Policy Variables
######################################################
variable "roks_kms_policy" {
  default     = true
  description = "Determinies if Kubernetes to KMS Service Authorisation policy exists.If false it creates policy between services "
  type        = bool
}

######################################################
#IBM-Cloud Key Protect Variables
######################################################
variable "kms_instance" {
  description = "Name of Key Protect Instance. If null it creates an instance with `<var.resource_prefix>-kp`"
  type        = string
  default     = null
}
variable "kms_key" {
  description = "Name of Key Protect Key. If null it creates an instance with `<var.resource_prefix>-kp-key`"
  type        = string
  default     = null
}

variable "standard_key_type" {
  description = "Determines if it is a standard key or not." // This variable is used during creation of KP Key.
  default     = false
  type        = bool
}
######################################################
#IBM-Cloud Logging and Monitoring Variables
######################################################
variable "sysdig_name" {
  default     = null
  type        = string
  description = "Name of Sysdig Instance. If null it creates an instance with `<var.resource_prefix>-sysdig`"
}
variable "sysdig_access_key" {
  description = "The sysdig monitoring ingestion key that you want to use for your configuration"
  type        = string
  default     = null
}
variable "logDNA_name" {
  default     = null
  type        = string
  description = "Name of logDNA_name Instance. If null it creates an instance with `<var.resource_prefix>-logdna`"
}
variable "logdna_ingestion_key" {
  description = "The LogDNA ingestion key that you want to use for your configuration"
  type        = string
  default     = null
}
variable "private_endpoint" {
  description = "Add this option to connect to your Sysdig and logDNA service instance through the private service endpoint."
  type        = string
  default     = null
}
######################################################
#IBM-Cloud Network Variables
######################################################
variable "custom_sg_rules" {
  description = "Custom Security rules"
  type        = any // Refer README for type
  default     = []
}
