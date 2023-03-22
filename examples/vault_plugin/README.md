# Argo CD Vault Plugin Deployment Example

This example illustrates how to use the `terraform-kubernetes-argocd` module to install the Argo CD with the [Argo CD Vault Plugin](https://github.com/argoproj-labs/argocd-vault-plugin).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| release_name | Helm release name | string | `argocd` | no |
| namespace | Namespace to install ArgoCD chart into (created if non-existent on target cluster) | string | `argocd` | no |
| argocd_chart_version | Version of ArgoCD chart to install | string | `5.27.1` | no |
| timeout_seconds | Helm chart deployment can sometimes take longer than the default 5 minutes. Set a custom timeout (secs) | number | `800` | no |
| admin_password | Default Admin password | string | empty | no |
| insecure | Disable TLS on the ArogCD API Server? | bool | `false` | no |
| values_file | Name of the ArgoCD helm chart values file to use | string | `values.yaml` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

To provision this example, replace the `url` value in the `argocd+vault-plugin_values.yaml` file and the values in the `terraform.tfvars.example` file with your own. Rename `terraform.tfvars.example` to `terraform.tfvars` and run the following commands from within this directory:
- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure

**N.B.** Since this example disables TLS on the API server you may want to [configure an ingress](https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/) for access to it.