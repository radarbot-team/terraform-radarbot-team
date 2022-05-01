resource "github_team_membership" "enrico1108_checklists_team" {
  team_id  = github_team.checklists_team_writer.id
  username = "enrico1108"
  role     = "member"
}
