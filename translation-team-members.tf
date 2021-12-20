resource "github_team_membership" "onxyj3_translation_team" {
  team_id  = github_team.translation_team_writer.id
  username = "onyxj3"
  role     = "member"
}
