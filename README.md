# Terraform Helm ArgoCD Module
A Terraform module to deploy [ArgoCD](https://argoproj.github.io/cd/) on a Kubernetes Cluster using the [Helm Provider](https://registry.terraform.io/providers/hashicorp/helm).

![Concept Flow Illustration](https://res.cloudinary.com/qunux/image/upload/v1642563762/terraform_kubernetes_argocd_mtze07.svg)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| namespace | Namespace to install ArgoCD chart into (created if non-existent on target cluster) | string | `argocd` | no |
| argocd_chart_version | Version of ArgoCD chart to install | string | `3.29.5` | no |
| timeout_seconds | Helm chart deployment can sometimes take longer than the default 5 minutes. Set a custom timeout (secs) | number | `800` | no |
| admin_password | Default Admin password | string | `argocd` | no |
| values_file | Name of the ArgoCD helm chart values file to use | string | `values.yaml` | no |