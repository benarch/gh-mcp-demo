variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "ben-ghmcp-demo-rg"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "benstgmcpdemo"
  
  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && can(regex("^[a-z0-9]+$", var.storage_account_name))
    error_message = "Storage account name must be between 3 and 24 characters long and can only contain lowercase letters and numbers."
  }
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "eastus2"
}

variable "storage_account_sku" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
  
  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.storage_account_sku)
    error_message = "Storage account SKU must be one of: LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "gh-mcp-demo"
    Owner       = "ben"
    ManagedBy   = "terraform"
  }
}