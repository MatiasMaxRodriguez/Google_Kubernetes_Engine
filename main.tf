# Se define la Red
resource "google_compute_network" "vpc_network" {
  name                    = "mi-red-vpc"
  auto_create_subnetworks = false
}

# Se define la Subred
resource "google_compute_subnetwork" "subnet_1" {
  name          = "subred-a"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}

# Se crea el Cluster
resource "google_container_cluster" "primary" {
  name     = "mi-cluster-gke"
  location = "us-central1-a"

  # Elimino el pool de nodos por defecto para crear uno personalizado
  remove_default_node_pool = true
  initial_node_count       = 1
  
  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnet_1.name
}

# Pool de nodos personalizado
resource "google_container_node_pool" "primary_nodes" {
  name       = "pool-de-nodos"
  location   = "us-central1-a"
  cluster    = google_container_cluster.primary.name
  node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}