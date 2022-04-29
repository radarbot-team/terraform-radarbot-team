resource "github_repository" "checklists_repository" {
  name         = "checklists-radarbot"
  description  = "Checklists application"
  has_issues   = true
  has_projects = true
  topics       = ["documentation", "docs", "radarbot"]
  visibility   = "private"
}

resource "github_team_repository" "team_checklists_repository" {
  team_id    = github_team.checklists_team_writer.id
  repository = github_repository.checklists_repository.name
  permission = "push"
}
