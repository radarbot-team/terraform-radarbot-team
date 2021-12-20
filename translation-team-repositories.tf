resource "github_repository" "translations_repository" {
  name       = "radarbot-translations"
  visibility = "private"
}

resource "github_team_repository" "team_translations_repository" {
  team_id    = github_team.translation_team_writer.id
  repository = github_repository.translations_repository.name
  permission = "pull"
}
