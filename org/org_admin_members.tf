module "afbb_0987" {
  source      = "../modules/org-member"
  discord_tag = "afbb#0987"
  role        = "admin"
  team_id     = data.github_team.all-org-members.id
}

module "afbb_0988" {
  source      = "../modules/org-member"
  discord_tag = "afbb#0988"
  role        = "admin"
  team_id     = data.github_team.all-org-members.id
}
