output "ingest_nodes" {
  value = {
    for node in digitalocean_droplet.ingest_nodes:
      node.name => {
        "public_ip" = node.ipv4_address
        "private_ip" = node.ipv4_address_private
      }
  }
}

output "lb_nodes" {
  value = {
    for node in digitalocean_droplet.lb_nodes:
      node.name => {
        "public_ip" = node.ipv4_address
        "private_ip" = node.ipv4_address_private
      }
  }
}

output "worker_nodes" {
  value = {
    for node in digitalocean_droplet.worker_nodes:
      node.name => {
        "public_ip" = node.ipv4_address
        "private_ip" = node.ipv4_address_private
      }
  }
}
