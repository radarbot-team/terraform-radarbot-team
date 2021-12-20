resource "github_team_membership" "org_member" {
  for_each = {
    for member in csvdecode(file("members.csv")) :
    member.username => member
  }

  team_id  = github_team.all_org_members.id
  username = each.value.username
  role     = "member"
}
