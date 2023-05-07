locals {
  name   = "example-ImageBuilder-Role"
  region = "eu-north-1"
  tags = {
    env = "test-env"
  }
}

provider "aws" {
  region = local.region
}

module "imagebuilder_instance_profile" {
  source    = "../../"
  role_name = local.name
  tags      = local.tags
}
