resource "github_team" "all_org_members" {
  name        = "all-org-members"
  description = "All members of the RadarBot Team"
  privacy     = "closed"
}


resource "github_team" "bot_core_writer" {
  name        = "bot-core-writer"
  description = "Bot Core Writer"
  privacy     = "secret"
}

resource "github_team" "web_team_writer" {
  name        = "web-team-writer"
  description = "Web team"
  privacy     = "closed"
}

resource "github_team" "translation_team_writer" {
  name        = "translation-team-writer"
  description = "Team that provides the translations for Radarbot"
  privacy     = "closed"
}
