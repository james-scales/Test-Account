resource "google_compute_router" "useastrouter" {
  name    = "useastrouter"
  region  = "us-east1"
  network = google_compute_network.mainvpc.id
}
resource "google_compute_router" "usrouter" {
  name    = "usrouter"
  region  = "us-central1"
  network = google_compute_network.mainvpc.id
}
