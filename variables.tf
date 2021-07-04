locals {
  region                = "asia-southeast1"
  zone                  = "asia-southeast1-a"
  airbyte_machine_type  = "e2-small"
  metabase_machine_type = "e2-small"
  airflow_machine_type  = "e2-medium"
  source_datasets = {
    # To add additional dataset, add values below in the format
    # dataset_name = "Dataset descriptions"
    postgres_crm = "Raw data of our company from a Postgres database"
  }
}

variable "project_id" {
  type = string
}

variable "billing_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "org_id" {
  type = string
}
