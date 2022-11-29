terraform {
  backend "remote" {
      organization = "orgLK"

      workspaces {
          name = "gh-actions-demo"
      }
  }
}
