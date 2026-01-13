# Day 5 - Create VPC with IPv6

This Terraform configuration demonstrates how to create a VPC that includes an Amazon-provided IPv6 CIDR block.

## Resources Created

1.  **AWS VPC**: A custom VPC configured with both an IPv4 CIDR and an auto-assigned IPv6 CIDR block.

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
| `vpc_cidr` | IPv4 CIDR block for the VPC. | string | `10.0.0.0/16` |
| `vpc_name` | Name of the VPC. | string | `datacenter-vpc` |

## Notes

*   The argument `assign_generated_ipv6_cidr_block = true` requests an IPv6 CIDR block from Amazon's pool.
*   The assigned IPv6 CIDR block is available in the outputs after application.