resource "google_compute_instance" "airbyte_instance" {
  name                    = "${var.project_id}-airbyte"
  machine_type            = local.airbyte_machine_type
  project                 = var.project_id
  metadata_startup_script = file("./sh_scripts/airbyte.sh")

  depends_on = [
    google_project_service.data_project_services,
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210415"
      size  = 50
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM"
    }
  }
}

resource "google_compute_instance" "metabase_instance" {
  name                    = "${var.project_id}-metabase"
  machine_type            = local.metabase_machine_type
  project                 = var.project_id
  metadata_startup_script = file("./sh_scripts/metabase.sh")

  depends_on = [
    google_project_service.data_project_services,
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210415"
      size  = 50
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM"
    }
  }
}

resource "google_compute_instance" "airflow_instance" {
  name                    = "${var.project_id}-airflow"
  machine_type            = local.airflow_machine_type
  project                 = var.project_id
  metadata_startup_script = file("./sh_scripts/airflow.sh")

  depends_on = [
    google_project_service.data_project_services,
  ]

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210415"
      size  = 50
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM"
    }
  }
}
