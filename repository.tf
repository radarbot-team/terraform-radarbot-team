resource "github_repository" "terraform_radarbot_team" {
  name        = "terraform-radarbot-team"
  description = "RadarBot team configuration as code using Terraform"
  visibility  = "public"
  topics      = ["config", "terraform"]
}

resource "github_branch_protection_v3" "team_baseline_config" {
  repository = github_repository.terraform_radarbot_team.name
  branch     = "master"

  required_status_checks {
    # require up to date before merging
    strict = true
  }
  required_pull_request_reviews {
    dismiss_stale_reviews      = false
    require_code_owner_reviews = true
  }
}

resource "github_repository" "radarbot_team_best_pratices" {
  name         = "radarbot-team-best-pratices"
  description  = "RadarBot team best practices guide"
  topics       = ["best-pratices", "docs"]
  visibility   = "public"
  has_issues   = false
  has_wiki     = false
  has_projects = false
}
