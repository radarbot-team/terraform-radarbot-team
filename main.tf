terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  owner = "radarbot-team"
}

resource "github_repository" "terraform-radarbot-team" {
  name        = "terraform-radarbot-team"
  description = "Test Terraform Repository"
  visibility  = "public"

}

resource "github_branch_protection_v3" "protection-master" {
  repository = "github_repository.terraform-radarbot-team"
  branch     = "master"

  required_pull_request_reviews {
    require_code_owner_reviews = true
  }
}

resource "github_repository" "test-terraform" {
  name        = "test-terraform"
  description = "Test Terraform Repository"
}
