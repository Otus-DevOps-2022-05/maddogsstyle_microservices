terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}


resource "yandex_compute_instance" "app" {
  name  = "docker-node-${count.index}"
  count = var.instance_count

  labels = {
    tags = "reddit-app"
  }
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd887idda5cn5ioqbed4"
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}

resource "local_file" "inventory" {
  content = templatefile("inventory.tpl",
    {
      docker_hosts = yandex_compute_instance.app.*.network_interface.0.nat_ip_address
    }
  )
  filename = "../ansible/inventory.ini"
}
