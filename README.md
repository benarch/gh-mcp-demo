# GitHub MCP Demo - Azure Terraform Integration

## Overview

This repository serves as a comprehensive demonstration for the **GitHub Connect 2025** event, showcasing the powerful integration between GitHub Copilot, Model Context Protocol (MCP), and cloud infrastructure automation. The demonstration provides a complete workflow documentation for building and deploying Azure infrastructure using Terraform with MCP-enhanced tooling.

This documentation covers the entire demo creation process for community purposes and is suitable for a **6-minute demonstration** (we recommend recording the demo and increasing playback speed to meet timing requirements).

**Technology Stack**: GitHub Copilot Business in "Agent" mode with **Claude Sonnet 4** model.

## Demo Purpose & Objectives

This demonstration achieves the following key objectives:

1. **MCP Installation Process**: Demonstrate the Model Context Protocol installation process in VS Code IDE for people who are new to MCP
2. **Multi-MCP Integration**: Use GitHub Copilot with Azure MCP, Terraform MCP, and GitHub MCP to showcase the strength of Modern Context Protocol enablement
3. **Infrastructure as Code**: Build a simple Terraform solution using MCP and deploy it on Azure
4. **Error Handling & Troubleshooting**: Perform fixes during pre-created errors to demonstrate real-world problem-solving
5. **Git Workflow**: Create a new branch on the GitHub repository and create a pull request for review prior to merging to the main branch (the "feature" branch will remain unmerged for demo purposes)

## Prerequisites

### Required VS Code Extensions

- **GitHub Copilot**: AI-powered code completion and assistance
- **GitHub Copilot Chat**: Interactive AI assistance
- **HashiCorp Terraform**: Terraform language support and tooling
- **Continue**: MCP client for VS Code

### Authentication & CLI Requirements

- **GitHub**: Signed in with Copilot enabled
- **Azure CLI (`az`)**: Logged in to a demo subscription
- **GitHub CLI (`gh`)**: Authenticated and configured
- **Terraform**: Version 1.6 or higher

### Repository Setup

- Empty public or private repository named `Github-mcp-demo`
- Repository should contain a blank `README.md` file
- Repository cloned locally to your development environment

## Pre-Demo Setup

### Installation Requirements

- Install Azure MCP server
- Install Terraform MCP server
- Create local directory and open it in your IDE workspace
- Create a GitHub repository with an empty README file
- Run `az login` to your desired tenant
- Select your Azure subscription

## Demo Workflow

### Step 1: GitHub MCP Installation
Install GitHub MCP using your IDE Extensions window or through the MCP Registry.

**Start Azure MCP and Terraform MCP** after installing GitHub MCP.

### Step 2: Repository Cloning
Execute `git clone` with the repository URL and clone it to the created directory.

### Step 3: Infrastructure Code Generation
Using GitHub Copilot, paste the following prompt:

```
Write Terraform (azurerm) to create a resource group and a Storage Account for dev. Use variables for name, location, and SKU; add tags; and output the account id.
the resource group name is "ben-ghmcp-demo-rg", storage account name: "benstgmcpdemo", region: eastUS2
```

### Step 4: Validation & Best Practices
Once completed successfully, use the following prompt:

```
Using Terraform MCP perform syntax validation and confirm best practices. Once completed, Run terraform init then terraform validate. Paste the summaries.
```

### Step 5: Execution Planning
Once completed successfully, use the following prompt:

```
Execute terraform plan with the environment variables and summarize planned changes.
```

### Step 6: Git Workflow & Pull Request Creation
Once completed successfully, use the following prompt:

**Standard Prompt:**
```
Create a new branch feat/storage, commit all Terraform files with message 'feat: storage account via Terraform', and open a PR to main titled 'Add storage account'. include in the description with: what/why/how, risks (none if plan only), and a checklist (init, plan, tagging).
```

**Alternate Enhanced Prompt:**
```
Create complete Terraform Azure storage solution with validation workflow, then open professional PR from feat/storage branch with comprehensive description covering what/why/how, risk assessment, detailed checklist, and impact summary.
```

### Step 7: Azure Resource Verification
Run Azure CLI command using Azure MCP:

```
Run az account show --query name -o tsv to confirm subscription, then az group list --query "[?contains(name,'ben-mcp-demo-rg')].[name,location]" -o table
```

## Troubleshooting

### Optional Troubleshooting Steps
If Terraform provider fails, run the following commands in your IDE terminal:

```bash
# Re-authenticate with Azure
az login

# Set the correct subscription
az account set --subscription "<name_or_id>"

# Re-initialize Terraform
terraform init
```

## Demo Highlights

- **Seamless Integration**: Experience the power of MCP-enhanced GitHub Copilot across multiple service domains
- **Professional Workflow**: Demonstrate enterprise-grade development practices with proper Git workflows
- **Real-time Problem Solving**: Show how AI assistance handles common development challenges
- **Infrastructure Automation**: Illustrate modern cloud infrastructure deployment patterns

## Expected Outcomes

By the end of this demonstration, participants will have:

- Successfully installed and configured MCP in VS Code
- Created a complete Terraform solution for Azure infrastructure
- Experienced the power of multi-MCP integration with GitHub Copilot
- Implemented a professional Git workflow with pull requests
- Deployed and managed cloud infrastructure using Infrastructure as Code principles

---

**Event**: GitHub Connect 2025  
**Demo Duration**: 6 minutes  
**Technology Focus**: MCP + GitHub Copilot + Azure + Terraform Integration  
**Author**: Ben Dali
