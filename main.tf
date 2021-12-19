terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

module "user_map" {
  source = "./org/map"
}

resource "github_team" "all_org_members" {
  name        = "all-org-members"
  description = "All members of the RadarBot Team"
  privacy     = "closed"
}
