module "afbb_0987" {
  source      = "./modules/org-member"
  discord_tag = "afbb#0987"
  role        = "admin"
  team_id     = github_team.all_org_members.id
}

module "afbb_0988" {
  source      = "./modules/org-member"
  discord_tag = "afbb#0988"
  role        = "admin"
  team_id     = github_team.all_org_members.id
}
