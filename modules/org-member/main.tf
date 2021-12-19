locals {
  github_username = lookup(module.user_map.map, var.discord_tag)
}

module "user_map" {
  source = "../../org/map"
}

resource "github_membership" "org_member" {
  username = local.github_username
  role     = var.role
}

resource "github_team_membership" "all_org_members" {
  team_id  = var.team_id
  username = local.github_username
  role     = "member"
}
