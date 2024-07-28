![Terraform](https://github.com/user-attachments/assets/37995097-6dca-490c-a923-d21ef33c24c7)

# Terrafrom
> [!NOTE]
**Terraform** *is an infrastructure-as-code software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.*

## Get Help
- Get a list of available commands for execution with descriptions.
```
terraform -help
```
- Display help options for the fmt command.
```
terraform fmt -help
```
## Show Your Terraform Version
- Show the current version of your Terraform and notifies you if there is a newer version available for download.
```
terraform version
```
## Format Your Terraform Code
- Format your Terraform configuration files using the HCL language standard.
```
terraform fmt
```
- Also format files in subdirectories.
```
terraform fmt --recursive
```
- Display differences between original configuration files and formatting changes.
```
terraform fmt --diff
```
## Initialize Your Directory
- This command performs Backend Initialization.
```
terraform init
```
## Validate Your Terraform Code
- Validate the configuration files in your directory and does not access any remote state or services.
```
terraform validate
```
## Plan Your Infrastructure
- Plan will generate an execution plan, showing you what actions will be taken without actually performing the planned actions.
```
terraform plan
```
- Create a plan to destroy all objects rather than the usual actions.
```
terraform plan -destroy
```
## Deploy Your Infrastructure
- Create or update infrastructure depending on the configuration files. By default, a plan will be generated first and will need to be approved before it is applied.
```
terraform apply
```
- Pass in variables contained in a file.
```
terraform apply -var-file="varfile.tfvars"
```
## Destroy Your Infrastructure
- Destroy the infrastructure managed by Terraform.
```
terraform destroy
```
## ‘Taint’ or ‘Untaint’ Your Resources
- Taint a specified resource instance
```
terraform taint vm1.name
```
- Untaint the already tainted resource instance.
```
terraform untaint vm1.name
```
## Refresh the State File
- Modify the state file with updated metadata containing information on the resources being managed in Terraform. Will not modify your infrastructure.
```
terraform refresh
```
## View Your State File
- Show the state file in a human-readable format.
```
terraform show
```
##  Get Provider Information
- Display a tree of providers used in the configuration files and their requirements.
```
terraform providers
```
## Manage Your Workspaces
- One of the following subcommands must be used with the workspace command.
```
terraform workspace
```
- Show the name of the current workspace.
```
terraform workspace show
```
- List your workspaces.
```
terraform workspace list 
```
## View Your Outputs
- List all the outputs currently held in your state file.
```
terraform output
```
## Produce a Dependency Diagram
- Produce a graph in DOT language showing the dependencies between objects in the state file.
```
terraform graph
```



