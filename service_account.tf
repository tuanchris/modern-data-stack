# Bigquery Owner
resource "google_service_account" "bq_owner" {
  account_id = "bq-owner"
  project    = var.project_id
  depends_on = [
    google_project.data_project,
  ]
}

# Airbyte service account
resource "google_service_account" "airbyte_sa" {
  account_id   = "airbyte"
  project      = var.project_id
  display_name = "Airbyte Service Account"
  description  = "Airbyte service account"
  depends_on = [
    google_project.data_project,
  ]
}
# Airbyte service account key
resource "google_service_account_key" "airbyte_sa_key" {
  service_account_id = google_service_account.airbyte_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  depends_on = [
    google_project.data_project,
  ]
}

# Metabase service account
resource "google_service_account" "metabase_sa" {
  account_id   = "metabase"
  project      = var.project_id
  display_name = "Metabase Service Account"
  description  = "Metabase service account"
  depends_on = [
    google_project.data_project,
  ]
}
# Metabase service account key
resource "google_service_account_key" "metabase_sa_key" {
  service_account_id = google_service_account.metabase_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  depends_on = [
    google_project.data_project,
  ]
}

# Airflow service account
resource "google_service_account" "airflow_sa" {
  account_id   = "airflow"
  project      = var.project_id
  display_name = "Airflow Service Account"
  description  = "Airflow service account"
  depends_on = [
    google_project.data_project,
  ]
}
# Airflow service account key
resource "google_service_account_key" "airflow_sa_key" {
  service_account_id = google_service_account.airflow_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  depends_on = [
    google_project.data_project,
  ]
}

# dbt service account
resource "google_service_account" "dbt_sa" {
  account_id   = "dbt-runner"
  project      = var.project_id
  display_name = "dbt Service Account"
  description  = "dbt service account"
  depends_on = [
    google_project.data_project,
  ]
}
# dbt service account key
resource "google_service_account_key" "dbt_sa_key" {
  service_account_id = google_service_account.dbt_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  depends_on = [
    google_project.data_project,
  ]
}

