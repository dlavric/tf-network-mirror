# tf-network-mirror


- Create the `.terraformrc` Terraform CLI configuration file for MacOS and place it in the home directory
```shell
cp .terraformrc ~
```

- Download the provider files to a directory on your local machine:
```shell
terraform providers mirror /Users/daniela/Downloads/dlavric/tf-network-mirror/skill-map-netmirror

- Mirroring hashicorp/aws...
  - Selected v5.5.0 to meet constraints 5.5.0
  - Downloading package for darwin_amd64...
  - Package authenticated: signed by HashiCorp
```
