\# Terraform Fundamentals



\## DevOps Institute Mumbai – Assignment 5



This repository contains my practical work for the Terraform Fundamentals assignment based on the official HashiCorp Terraform tutorials.



\## Student



\*\*Name:\*\* Khan Faizan

\*\*Course:\*\* B.Sc. IT

\*\*Assignment:\*\* Terraform Fundamentals

\*\*Cloud Provider:\*\* AWS

\*\*AWS Region:\*\* ap-south-1



\---



\## Tools Used



\* Terraform

\* AWS CLI

\* Amazon EC2

\* Amazon S3

\* HashiCorp Configuration Language (HCL)



\---



\## Tutorials Completed



\### 1. Infrastructure as Code



Learned the concept of Infrastructure as Code and how Terraform manages cloud infrastructure through configuration files.



Folder:



```text

01-iac/

```



\### 2. Install Terraform



Installed Terraform and verified the installation from the command line.



Folder:



```text

02-install-terraform/

```



\### 3. Build Infrastructure



Created an Amazon EC2 instance using Terraform.



Folder:



```text

03-build-infrastructure/

```



Key Terraform resource:



```text

aws\_instance.app\_server

```



\### 4. Change Infrastructure



Used Terraform input variables to control the EC2 instance configuration and understand how Terraform detects infrastructure changes.



Folder:



```text

04-change-infrastructure/

```



\### 5. Destroy Infrastructure



Learned how Terraform removes resources that it manages using:



```text

terraform destroy

```



Folder:



```text

05-destroy-infrastructure/

```



\### 6. Define Input Variables



Defined an input variable for the EC2 instance type.



Folder:



```text

06-input-variables/

```



Example:



```hcl

variable "instance\_type" {

&#x20; description = "EC2 instance type"

&#x20; type        = string

&#x20; default     = "t3.micro"

}

```



\### 7. Query Data with Outputs



Configured Terraform outputs to display information about the created EC2 instance.



Folder:



```text

07-outputs/

```



Outputs include:



\* Instance ID

\* Public IP address

\* Public DNS



\### 8. Store Remote State Using S3



Configured an Amazon S3 backend to store Terraform state remotely.



Folder:



```text

08-s3-backend/

```



The backend uses:



```text

Amazon S3

Region: ap-south-1

```



\---



\## Terraform State



The Terraform-managed resource was verified using:



```text

terraform state list

```



Result:



```text

aws\_instance.app\_server

```



This confirms that Terraform is tracking the EC2 instance in its state.



\---



\## AWS Infrastructure



The project provisions an Amazon EC2 instance using Terraform.



Resource:



```text

aws\_instance.app\_server

```



Instance name:



```text

Terraform-App-Server

```



Instance type:



```text

t3.micro

```



\---



\## Important Terraform Commands



Initialize Terraform:



```text

terraform init

```



Format configuration:



```text

terraform fmt

```



Validate configuration:



```text

terraform validate

```



Create an execution plan:



```text

terraform plan

```



Create/update infrastructure:



```text

terraform apply

```



View managed resources:



```text

terraform state list

```



Destroy infrastructure:



```text

terraform destroy

```



\---



\## Screenshots



The assignment submission includes screenshots showing:



1\. Terraform `apply` output

2\. AWS EC2 Console showing the provisioned resource

3\. `terraform state list` showing the Terraform-managed resource



\---



\## Security



Terraform state files and local Terraform working directories are excluded from Git using `.gitignore`.



The following are not intended to be committed:



```text

.terraform/

terraform.tfstate

terraform.tfstate.backup

\*.tfvars

```



\---



\## Key Learning



Through this assignment, I learned how Terraform can be used to define, provision, modify, track, output information about, and destroy cloud infrastructure. I also learned how Terraform state can be stored remotely using an Amazon S3 backend.



