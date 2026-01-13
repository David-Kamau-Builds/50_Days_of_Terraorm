# Day 3 - Create a VPC

This Terraform configuration demonstrates how to create a custom Virtual Private Cloud (VPC) with a public subnet, an internet gateway, and a route table to enable internet access.

## Resources Created

1.  **AWS VPC**: A custom VPC with DNS support enabled.
2.  **AWS Subnet**: A public subnet within the VPC.
3.  **AWS Internet Gateway**: To allow communication between the VPC and the internet.
4.  **AWS Route Table**: Defines rules to direct network traffic from the subnet to the internet gateway.

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
| `vpc_cidr` | CIDR block for the VPC. | string | `10.0.0.0/16` |
| `subnet_cidr` | CIDR block for the public subnet. | string | `10.0.1.0/24` |

## Notes

*   The VPC is created with DNS hostnames and DNS support enabled.
*   The subnet is configured to map public IPs on launch (`map_public_ip_on_launch = true`).
*   A route table association links the public subnet to the route table containing the internet gateway route.