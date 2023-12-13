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

> Make sure to review the proposed changes before proceeding to the next step.

#### Apply the changes defined in the plan:
```bash
terraform apply "tfplan.out"
```

### Cleanup
To avoid unnecessary costs, it is recommended to destroy the created instances when they are no longer in use. This can be done by running:
```bash
terraform destroy -var-file="prod.tfvars"
```
> Confirm the destruction by typing 'yes' when prompted.

## To-Do
- [x] Create locals block in variables file
  - [x] Define common_tags
- [x] Create variables block in variables file
  - [x] Define aws_region
  - [x] Define aws_profile
  - [x] Define domain
  - [x] Define service_name
  - [x] Define service_domain
- [x] Create prod vars file (e.g., `prod.tfvars`)
  - [x] Set values for aws_region
  - [x] Set values for aws_profile
  - [x] Set values for service_name
  - [x] Set values for service_domain
- [x] Configure Cognito
  - [x] Create aws_cognito_user_pool resource
  - [x] Create aws_cognito_user_pool_client resource
  - [x] Create aws_cognito_user_pool_domain resource
- [x] Configure DynamoDB
  - [x] Create aws_dynamodb_table resource
  - [x] Create aws_dynamodb_table_item resource
- [ ] Configure API Gateway
  - [ ] Define API resources and methods
  - [ ] Set up authentication and authorization
  - [ ] Add additional API configurations

> Note: As the project evolves, new tools and components such as AWS Lambda functions may be added to enhance the functionality. Keep an eye on updates and consider extending the configuration accordingly.
