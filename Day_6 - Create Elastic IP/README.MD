# Day 6 - Create an Elastic IP

This Terraform configuration demonstrates how to create an Elastic IP.

## Resources Created

1.  **AWS Elastic IP**: A static IPv4 address designed for dynamic cloud computing.

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

## Notes

*   This configuration provisions an Elastic IP for use within a VPC.
*   Remember that AWS charges for unassociated Elastic IP addresses.