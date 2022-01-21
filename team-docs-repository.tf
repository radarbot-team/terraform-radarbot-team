resource "github_repository" "docs_repository" {
  name         = "radarbot-docs"
  description  = "Documentation for RadarBot"
  has_issues   = true
  has_projects = true
  topics       = ["documentation", "docs", "radarbot"]
  visibility   = "public"
}

resource "github_team_repository" "team_docs_repository" {
  team_id    = github_team.docs_team_writer.id
  repository = github_repository.docs_repository.name
  permission = "push"
}
