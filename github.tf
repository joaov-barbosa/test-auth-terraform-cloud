provider "github" {
  owner = "joaov-barbosa"
  token= var.token
}

data "github_repository" "repo" {
  full_name = "joaov-barbosa/test-auth-terraform-cloud"
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

