terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "radarbot"

    workspaces {
      name = "github-management"
    }
  }
}
