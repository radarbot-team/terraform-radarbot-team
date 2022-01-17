resource "github_team_membership" "indekt_translation_team" {
  team_id  = github_team.translation_team_writer.id
  username = "indekt"
  role     = "member"
}

resource "github_team_membership" "enrico1108_translation_team" {
  team_id  = github_team.translation_team_writer.id
  username = "enrico1108"
  role     = "member"
}
