variable "discord_tag" {
  description = "discord tag - (REQUIRED) - the discord tag of the user you want to add to the server"
}

variable "role" {
  description = "role - (OPTIONAL). Valid values are admin and member (default)"
  default     = "member"
}

variable "team_id" {
  description = "Id of the default team to add the member."
}


