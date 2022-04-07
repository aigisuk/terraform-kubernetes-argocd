terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.1"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # path to your kubeconfig file
  }
}

module "argocd" {
  //source = "github.com/aigisuk/terraform-kuberenetes-argocd"
  source = "aigisuk/argocd/kubernetes"

  admin_password = var.admin_password
  insecure       = var.insecure
  values_file    = var.argocd_values_file
}