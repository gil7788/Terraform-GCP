# Terraform GCP Configuration
This repository contains Terraform configuration files for setting up a basic infrastructure on Google Cloud Platform (GCP). It includes the provisioning of a Virtual Private Cloud (VPC) network and a compute instance within GCP.

## Prerequisites
Before you begin, ensure you have the following:

- A Google Cloud Platform (GCP) account.
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) installed.
- [Terraform](https://www.terraform.io/downloads.html) installed.

## Setup

1. **Clone the Repository**:
   ```sh
   git clone [REPOSITORY_URL]
   cd [REPOSITORY_NAME]
   ```
2. **GCP Authentication**:
   - Create a GCP service account key:
     - Go to the GCP Console.
     - Navigate to "IAM & Admin" > "Service Accounts".
     - Click "Create Service Account" and follow the on-screen instructions.
     - After creating your service account, click "Create Key" and save the JSON file to your project directory.
   - Update `terraform.tf.vars` with the path to your service account key.

3. **Initialize Terraform**:
   Run `terraform init` in your project directory. This will download the necessary providers and initialize the Terraform project.

## Usage
- **Plan**: Run `terraform plan` to see the changes Terraform will make to your infrastructure.
- **Apply**: Run `terraform apply` to apply the changes to your GCP infrastructure.
- **Destroy**: When you no longer need the infrastructure, you can run `terraform destroy` to remove all resources created by Terraform.

## Resources Created

- `google_compute_network`: A VPC network to manage a private network in GCP.
- `google_compute_instance`: A compute instance for running applications.

## Variables
- `project`: The GCP project ID.
- `credentials_file`: Path to your GCP credentials file.
- `region`: The GCP region for the resources. Default is `us-central1`.
- `zone`: The GCP zone for the compute instance. Default is `us-central1-c`.

## Outputs
- `ip`: The internal IP address of the compute instance.

## Additional Information
For more detailed instructions and explanations, refer to the HashiCorp Terraform tutorial for GCP: [Infrastructure as Code with Terraform and GCP](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/infrastructure-as-code).
