resource "github_team_membership" "andrebrito16_docs_team" {
  team_id  = github_team.docs_team_writer.id
  username = "andrebrito16"
  role     = "admin"
}

resource "github_team_membership" "enrico1108_docs_team" {
  team_id  = github_team.docs_team_writer.id
  username = "enrico1108"
  role     = "member"
}
