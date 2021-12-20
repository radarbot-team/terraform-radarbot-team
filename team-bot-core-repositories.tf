resource "github_repository" "radarbot_repository" {
  name                 = "radarbot"
  description          = "✈️ A 100% Brazilian 🇧🇷 bot made to help people who loves virtual flight simulation. With a lot of great features and tools!"
  visibility           = "private"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  topics               = ["radarbot"]
  vulnerability_alerts = true
}

resource "github_team_repository" "core_team_radarbot_repository" {
  team_id    = github_team.bot_core_writer.id
  repository = github_repository.radarbot_repository.name
  permission = "pull"
}
