######################### SUBNET USED FOR LOAD BALANCER ############################################
resource "google_compute_subnetwork" "useastlizzo" {
  name                     = "useastlizzo"
  ip_cidr_range            = "10.255.15.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.mainvpc.id
  purpose                  = "PRIVATE"
  private_ip_google_access = true
  depends_on = [google_compute_network.mainvpc]
}

# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
# resource "google_compute_subnetwork" "regional_proxy_subnet" {
#   name          = "regional-proxy-subnet"
#   region        = "us-east1"
#   ip_cidr_range = "10.255.25.0/24"
#   # This purpose reserves this subnet for regional Envoy-based load balancers
#   purpose       = "REGIONAL_MANAGED_PROXY"
#   network       = google_compute_network.mainvpc.id
#   role          = "ACTIVE"
# }
#####################################################################################################
