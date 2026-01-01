# Day 1 - Create AWS Key Pair

This Terraform configuration demonstrates how to generate an SSH key pair programmatically using the `tls` provider, import the public key into AWS as a Key Pair, and save the private key to a local file with appropriate permissions.

## Resources Created

1.  **TLS Private Key**: Generates an RSA 2048-bit private key.
2.  **AWS Key Pair**: Uploads the generated public key to AWS.
3.  **Local File**: Saves the private key (`.pem`) to the local machine.

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
| `key_name` | The name of the AWS key pair. | string | `xfusion-kp` |
| `private_key_path` | Local path to save the private key. | string | `/home/bob/xfusion-kp.pem` |

## Notes

*   The private key file is saved with file permission `0400` (read-only by owner) to ensure security and compatibility with SSH clients.
*   **Important:** The default `private_key_path` is set to `/home/bob/...`. You should override this variable using a `terraform.tfvars` file or the `-var` flag if your user or path differs.