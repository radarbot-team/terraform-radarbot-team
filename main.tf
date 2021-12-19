terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Retrieve information about the currently (PAT) authenticated user
data "github_user" "self" {
  username = ""
}

