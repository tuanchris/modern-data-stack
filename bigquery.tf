resource "google_bigquery_dataset" "source_datasets" {
  for_each    = local.source_datasets
  dataset_id  = each.key
  description = each.value
  project     = google_project.data_project.project_id
  location    = local.region

  depends_on = [
    google_project_service.data_project_services,
  ]
  
  access {
    role          = "WRITER"
    user_by_email = google_service_account.airbyte_sa.email
  }
  access {
    role          = "OWNER"
    user_by_email = google_service_account.bq_owner.email
  }
}
