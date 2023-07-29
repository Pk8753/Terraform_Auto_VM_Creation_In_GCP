resource "google_compute_instance" "build_vm_via_terraform" {
  name         = "rancher-vm-deployment-challanege"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
  }

  metadata_startup_script = "echo hi > /test.txt"

}