resource "github_repository" "translations_repository" {
  name         = "radarbot-translations"
  description  = "Repository that contains JSON file with all RadarBot translations"
  has_issues   = true
  has_projects = true
  topics       = ["translations", "microservices"]
  visibility   = "private"
}

resource "github_team_repository" "team_translations_repository" {
  team_id    = github_team.translation_team_writer.id
  repository = github_repository.translations_repository.name
  permission = "push"
}
