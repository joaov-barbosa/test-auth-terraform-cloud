provider "github" {
  token = var.token
  owner = "joaov-barbosa"
}

data "github_repository" "repo" {
  full_name = "joaov-barbosa/cicd-aws-terraform-actions"
}

resource "github_actions_variable" "application_name" {
  repository    = data.github_repository.repo.name
  variable_name = "application_name"
  value         = "test1"
}
resource "github_actions_variable" "deployment_name" {
  repository    = data.github_repository.repo.name
  variable_name = "deployment_name"
  value         = "test2"
}

