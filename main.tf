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
