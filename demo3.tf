terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.17.0"
    }
  }
}

provider "github" {
    token = "YOUR TOKEN HERE"
  
}

resource "github_repository" "create_repo" {
  name        = "YOUR REPO NAME HERE"
  description = "created by terraform"

  visibility = "private"
}
