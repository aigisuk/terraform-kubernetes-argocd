locals {
  default_password = var.admin_password == "" ? "" : bcrypt(var.admin_password)
}