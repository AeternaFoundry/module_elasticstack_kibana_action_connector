terraform {
  required_version = ">= 1.6.0"
  required_providers {
    elasticstack = {
      source  = "elastic/elasticstack"
      version = "~> 0.16.5"
    }
  }
}
