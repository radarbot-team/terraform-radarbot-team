resource "github_repository" "terraform-radarbot-team" {
  name        = "terraform-radarbot-team"
  description = "Test Terraform Repository"
  visibility  = "public"

}

resource "github_branch_protection" "team_baseline_config" {
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
