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

- The `.terraformrc` Terraform CLI configuration file for MacOS is already created and it should be placed in the home directory of your machine:
```shell
cp .terraformrc ~
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

## Reference Documentation

- [Provider Installation block in Terraform CLI](https://developer.hashicorp.com/terraform/cli/config/config-file#explicit-installation-method-configuration)
- [Command: terraform providers mirror](https://developer.hashicorp.com/terraform/cli/commands/providers/mirror)
- [AWS Terraform provider](https://registry.terraform.io/providers/hashicorp/aws/latest)
- [AzureRm Terraform provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [Null provider](https://registry.terraform.io/providers/hashicorp/null/latest)
- [Null resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource?source=post_page---------------------------)