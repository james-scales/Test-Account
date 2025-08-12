# Resource: GKE Cluster
resource "google_container_cluster" "gke_cluster" {
  name     = "${local.name}-gke-cluster"
  location = var.gcp_region1

  remove_default_node_pool = true
  initial_node_count       = 1
  
  # Network
  network = google_compute_network.mainvpc.self_link
  subnetwork = google_compute_subnetwork.useastlizzo.self_link
}