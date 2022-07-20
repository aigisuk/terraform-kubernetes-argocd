# Default Deployment Example

This example illustrates how to use the `terraform-kubernetes-argocd` module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| release_name | Helm release name | string | `argocd` | no |
| namespace | Namespace to install ArgoCD chart into (created if non-existent on target cluster) | string | `argocd` | no |
| argocd_chart_version | Version of ArgoCD chart to install | string | `4.9.16` | no |
| timeout_seconds | Helm chart deployment can sometimes take longer than the default 5 minutes. Set a custom timeout (secs) | number | `800` | no |
| admin_password | Default Admin password | string | empty | no |
| insecure | Disable TLS on the ArogCD API Server? | bool | `false` | no |
| values_file | Name of the ArgoCD helm chart values file to use | string | `values.yaml` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
