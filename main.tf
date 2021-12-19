terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "github_repository" "test-terraform" {
  name        = "test-terraform"
  description = "Test Terraform Repository"
}
