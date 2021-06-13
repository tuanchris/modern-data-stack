resource "google_project_iam_binding" "sa_iam_bindings" {
  project = local.project_id
  role    = "roles/bigquery.admin"

  members = [
    "serviceAccount:${google_service_account.airbyte_sa.email}",
    "serviceAccount:${google_service_account.airflow_sa.email}",
    "serviceAccount:${google_service_account.dbt_sa.email}",
    "serviceAccount:${google_service_account.metabase_sa.email}",
  ]
}
