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
output "display_repo_name" {
  description = "displays repo url "
  value = github_repository.create_repo.git_clone_url

}
