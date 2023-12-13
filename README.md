# Terraform Project for Configuring Cognito
### Description
This project consists of a set of Terraform files that automate the configuration of the Amazon Cognito service on AWS. Amazon Cognito is a service that makes it easy to add authentication, authorization, and user management to web and mobile apps.

### Prerequisites
Before getting started, make sure you have Terraform installed locally and have configured your AWS credentials. You can find information on installing <a href="https://registry.terraform.io/">Terraform<a/> and configuring AWS credentials at AWS CLI Configuration.

### Usage Instructions
#### Create a variables file (e.g., prod.tfvars) with the necessary configuration:
```hcl
aws_region    = "us-east-1"
aws_profile   = "tf014"
service_name  = "tf-cognito-api-gateway"
service_domain = "tf-api-domain"
```

#### Initialize Terraform:
```bash
terraform init
```

#### Generate and review the Terraform execution plan:
```bash
terraform plan -out="tfplan.out" -var-file="prod.tfvars"
```

Make sure to review the proposed changes before proceeding to the next step.

#### Apply the changes defined in the plan:
```bash
terraform apply "tfplan.out"
```

### Cleanup
To avoid unnecessary costs, it is recommended to destroy the created instances when they are no longer in use. This can be done by running:
```bash
terraform destroy -var-file="prod.tfvars"
```
Confirm the destruction by typing 'yes' when prompted.

