terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "github_team" "all_org_members" {
  name        = "all-org-members"
  description = "All members of the RadarBot Team"
  privacy     = "closed"
}

# Retrieve information about the currently (PAT) authenticated user
data "github_user" "self" {
  username = ""
}

