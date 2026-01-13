# Day 4 - Create VPC with specific CIDR

This Terraform configuration demonstrates how to create a VPC with a specific IPv4 CIDR block and a customizable name.

## Resources Created

1.  **AWS VPC**: A custom VPC configured with a specific CIDR block.

## Prerequisites

*   Terraform >= 1.0.0
*   AWS CLI configured with appropriate credentials.

## Usage

1.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

2.  **Review the plan:**
    ```bash
    terraform plan
    ```

3.  **Apply the configuration:**
    ```bash
    terraform apply
    ```

## Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| `aws_region` | AWS region to deploy resources. | string | `us-east-1` |
| `vpc_cidr` | CIDR block for the VPC. | string | `192.168.0.0/24` |
| `vpc_name` | Name of the VPC. | string | `datacenter-vpc` |

## Notes

*   This configuration focuses on creating the VPC resource itself with a specific CIDR.
*   DNS hostnames and DNS support are enabled by default in this configuration.