data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "AliAQ9"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.terraform_remote_state.vpc.outputs
}