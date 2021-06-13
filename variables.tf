locals {
  region                = "asia-southeast1"
  zone                  = "asia-southeast1-a"
  project_id            = "tf-airbyte-demo"
  airbyte_machine_type  = "e2-small"
  metabase_machine_type = "e2-small"
  airflow_machine_type  = "e2-medium"
  source_datasets = {
    postgres_crm = "Raw data of our company from a Postgres database"
  }
}

variable "billing_id" {
  type = string
}

variable "folder_id" {
  type = string
}
