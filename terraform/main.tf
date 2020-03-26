#### Ingest Nodes
# Create a new ingest server in each of the defined deployment_zones regions

resource "digitalocean_droplet" "ingest_nodes"{
  count = length(local.ingest_nodes)
  image  = "ubuntu-18-04-x64"
  name   = "ingest-${local.ingest_nodes[count.index].zone}-${local.ingest_nodes[count.index].id}"
  region = local.ingest_nodes[count.index].zone
  size   = "s-2vcpu-4gb"
  private_networking = true
  ssh_keys = [for key in data.digitalocean_ssh_key.ssh_keys:
    key.id
  ]
}


#### Load Balancer Nodes
resource "digitalocean_droplet" "lb_nodes"{
  count = length(local.lb_nodes)
  image  = "ubuntu-18-04-x64"
  name   = "lb-${local.lb_nodes[count.index].zone}-${local.lb_nodes[count.index].id}"
  region = local.lb_nodes[count.index].zone
  size   = "s-2vcpu-4gb"
  private_networking = true
  ssh_keys = [for key in data.digitalocean_ssh_key.ssh_keys:
    key.id
  ]
}

#### Worker Nodes
resource "digitalocean_droplet" "worker_nodes"{
  count = length(local.worker_nodes)
  image  = "ubuntu-18-04-x64"
  name   = "worker-${local.worker_nodes[count.index].zone}-${local.worker_nodes[count.index].id}"
  region = local.worker_nodes[count.index].zone
  size   = "s-2vcpu-4gb"
  private_networking = true
  ssh_keys = [for key in data.digitalocean_ssh_key.ssh_keys:
    key.id
  ]
}
