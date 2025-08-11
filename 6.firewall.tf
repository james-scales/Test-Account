################### MAINVPC ########################
resource "google_compute_firewall" "allow-ssh" {
  name    = "${local.name}-allow-ssh"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = [ "ssh" ]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "icmp" {
  name    = "icmp"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "rdp" {
  name    = "rdp"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}
resource "google_compute_firewall" "allow-db" {
  name    = "allow-db"
  network = google_compute_network.mainvpc.name

  allow {
    protocol = "tcp"
    ports    = ["1521", "3306"]
  }

  source_ranges = ["0.0.0.0/0"]
}