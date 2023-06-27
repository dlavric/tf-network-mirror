# tf-network-mirror

This is a repository that serves the purpose of testing the Network mirror functionality in Terraform CLI.


## Pre-requisites

- [X] [Terraform](https://www.terraform.io/downloads)

## Steps on how to use this repository

- Clone this repository:
```shell
git clone git@github.com:dlavric/tf-network-mirror.git
```

- Go to the directory where the repo is stored:
```shell
cd tf-network-mirror
```

- Download the provider files to a directory on your local machine:
```shell
terraform providers mirror providers-netmirror

- Mirroring hashicorp/null...
  - Selected v3.2.1 to meet constraints 3.2.1
  - Downloading package for darwin_amd64...
  - Package authenticated: signed by HashiCorp
- Mirroring hashicorp/aws...
  - Selected v5.5.0 to meet constraints 5.5.0
  - Downloading package for darwin_amd64...
  - Package authenticated: signed by HashiCorp
- Mirroring hashicorp/azurerm...
  - Selected v3.62.1 to meet constraints 3.62.1
  - Downloading package for darwin_amd64...
  - Package authenticated: signed by HashiCorp
```

Observe that a folder has been created locally, on your repository and it has downloaded locally all 3 providers 
defined on the Terraform code: AWS, AzureRM, Null.

![Providerpicture](https://github.com/dlavric/tf-network-mirror/blob/main/pictures/provider-picture.png)

The directory where the providers have been downloaded can be used as a local filesystem mirror in the 
provider installation configuration.

- The `.terraformrc` Terraform CLI configuration file for MacOS is already created and it should be placed in the home directory of your machine:
```shell
cp .terraformrc ~
```

- Initialize the providers:
```shell
terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/null versions matching "3.2.1"...
- Finding hashicorp/aws versions matching "5.5.0"...
- Finding hashicorp/azurerm versions matching "3.62.1"...
- Installing hashicorp/null v3.2.1...
- Installed hashicorp/null v3.2.1 (unauthenticated)
- Installing hashicorp/aws v5.5.0...
- Installed hashicorp/aws v5.5.0 (unauthenticated)
- Installing hashicorp/azurerm v3.62.1...
- Installed hashicorp/azurerm v3.62.1 (unauthenticated)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

╷
│ Warning: Incomplete lock file information for providers
│ 
│ Due to your customized provider installation methods, Terraform was forced to calculate lock file checksums locally for the following providers:
│   - hashicorp/aws
│   - hashicorp/azurerm
│   - hashicorp/null
│ 
│ The current .terraform.lock.hcl file only includes checksums for darwin_amd64, so Terraform running on another platform will fail to install these providers.
│ 
│ To calculate additional checksums for another platform, run:
│   terraform providers lock -platform=linux_amd64
│ (where linux_amd64 is the platform to generate)
╵

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the Terraform code:
```shell
terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.test_null will be created
  + resource "null_resource" "test_null" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.test_null: Creating...
null_resource.test_null: Creation complete after 0s [id=5444154411030234432]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

## Reference Documentation

- [Provider Installation block in Terraform CLI](https://developer.hashicorp.com/terraform/cli/config/config-file#explicit-installation-method-configuration)
- [Command: terraform providers mirror](https://developer.hashicorp.com/terraform/cli/commands/providers/mirror)
- [AWS Terraform provider](https://registry.terraform.io/providers/hashicorp/aws/latest)
- [AzureRm Terraform provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [Null provider](https://registry.terraform.io/providers/hashicorp/null/latest)
- [Null resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource?source=post_page---------------------------)