terraform {
  backend "http" {
    address        = "https://artifactory.stage.0658b-techopscore.com/artifactory/terraform-appcode-dev/terraform.tfstate"
    lock_address   = "https://artifactory.stage.0658b-techopscore.com/artifactory/terraform-appcode-dev/lock"
    unlock_address = "https://artifactory.stage.0658b-techopscore.com/artifactory/terraform-appcode-dev/unlock"
    username       = "__token__"
    password       = "${TERRAFORM_AUTH_TOKEN}"
  }
}
