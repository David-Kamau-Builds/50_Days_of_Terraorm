# Day 2 - Create Security Group

This Terraform configuration demonstrates how to create an AWS Security Group within the default VPC. It configures ingress rules for SSH and HTTP access, and allows all egress traffic.

## Resources Created

1.  **AWS Security Group**: A security group allowing inbound traffic on ports 22 (SSH) and 80 (HTTP).

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
| `sg_name` | The name of the security group. | string | `devops-sg` |

## Notes

*   The security group is created in the default VPC of the selected region.
*   Ingress rules allow traffic from `0.0.0.0/0` (anywhere). For production environments, it is recommended to restrict the CIDR blocks to specific IP ranges.