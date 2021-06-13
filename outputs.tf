output "airbyte_sa_key" {
  value     = google_service_account_key.airbyte_sa_key.private_key
  sensitive = true
}

output "metabase_sa_key" {
  value     = google_service_account_key.metabase_sa_key.private_key
  sensitive = true
}

output "airflow_sa_key" {
  value     = google_service_account_key.airflow_sa_key.private_key
  sensitive = true
}
