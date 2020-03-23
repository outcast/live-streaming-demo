locals {
  ingest_nodes = flatten([
    for zone, count in var.ingest_zones: [
      for x in range(1, count+1): {
        zone = zone
        id = x
      }
    ]
  ])

  lb_nodes = flatten([
    for zone, count in var.lb_zones: [
      for x in range(1, count+1): {
        zone = zone
        id = x
      }
    ]
  ])

  worker_nodes = flatten([
    for zone, count in var.worker_zones: [
      for x in range(1, count+1): {
        zone = zone
        id = x
      }
    ]
  ])
}
