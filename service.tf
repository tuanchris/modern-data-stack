resource "google_project_service" "data_project_services" {
  project = google_project.data_project.project_id
  for_each = toset(
    [
      "compute.googleapis.com",
      "bigquery.googleapis.com",
      "logging.googleapis.com",
      "serviceusage.googleapis.com",
      "cloudresourcemanager.googleapis.com",
    ]
  )
  service                    = each.key
  disable_on_destroy         = false
  disable_dependent_services = true
  depends_on = [
    google_project.data_project,
  ]
}
