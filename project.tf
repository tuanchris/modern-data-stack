resource "google_project" "data_project" {
  billing_account = var.billing_id
  folder_id       = var.folder_id
  org_id          = var.org_id
  name            = local.project_id
  project_id      = local.project_id
  skip_delete     = true
}
