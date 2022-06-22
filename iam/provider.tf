provider "aws" {}

terraform {
	required_providers {
		aws = {
	    version = "~> 4.19.0"
		}
  }
}
