# Azure Terraform Demo - Storage Account and Resource Group

This Terraform configuration creates an Azure Resource Group and Storage Account for development purposes.

## Resources Created

- **Resource Group**: `ben-ghmcp-demo-rg` in East US 2
- **Storage Account**: `benstgmcpdemo` with LRS replication

## Prerequisites

1. [Terraform installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. [Azure CLI installed](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
3. Azure subscription and authenticated session

## Authentication

```bash
# Login to Azure
az login

# Set your subscription (if you have multiple)
az account set --subscription "your-subscription-id"
```

## Deployment

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Plan the deployment**:
   ```bash
   terraform plan
   ```

3. **Apply the configuration**:
   ```bash
   terraform apply
   ```

4. **View outputs**:
   ```bash
   terraform output
   ```

## Customization

Copy `terraform.tfvars.example` to `terraform.tfvars` and modify the values:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Then edit `terraform.tfvars` with your preferred values.

## Variables

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `resource_group_name` | Name of the resource group | `ben-ghmcp-demo-rg` | No |
| `storage_account_name` | Name of the storage account | `benstgmcpdemo` | No |
| `location` | Azure region | `eastus2` | No |
| `storage_account_sku` | Storage replication type | `LRS` | No |
| `tags` | Resource tags | See variables.tf | No |

## Outputs

- `resource_group_id`: The ID of the created resource group
- `storage_account_id`: The ID of the created storage account
- `storage_account_name`: The name of the storage account
- `storage_account_primary_access_key`: Primary access key (sensitive)
- `storage_account_primary_connection_string`: Primary connection string (sensitive)

## Cleanup

To destroy the resources:

```bash
terraform destroy
```