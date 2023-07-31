## GCP Infrastructure for go-webapp

This repository contains all the required Terraform code to provision the necessary GCP infrastructure to have a fully operative GKE cluster (free tier scope), including GAR docker repo.


## Stack

1. **Terraform** as our Infrastructure as Code tool.
2. **GCP** as our Cloud Vendor.
3. **GKE** as our core service to get provisioned.
4. **GAR** as our artifact registry to store our docker images.


## Prerequisites to provision the solution

1. Terraform
2. GCP account and Service Account JSON key with enough permissions


## Deployment procedure

- Clone the repository with `git clone https://github.com/Roleyner/astrafy-coding.git`
- In the `terraform.tfvars` file, change `region`, `zone` and `project_id` values according to the values you want/need to use
- Initialize terraform with `terraform init`
- Do the plan for the provisioning: `terraform plan`
- Do the apply to make the provisioning happen: `terraform apply`

*If an error related to APIs shows up, you have to manually enable **Cloud Resource Manager API** and **Kubernetes Engine API** from the GCP web console*


### Caveat

It's importante to tear down all the GCP resources used for this implementation once the lab is done, hence `terraform destroy` needs to be performed :)
