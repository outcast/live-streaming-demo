resource "null_resource" "ansible_nodes_conf" {
  triggers = {
    template_rendered = data.template_file.ansible_nodes_conf.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.ansible_nodes_conf.rendered}' > ../configs/ansible/nodes.conf"
  }
}

resource "null_resource" "nginx_default_conf" {
  triggers = {
    template_rendered = data.template_file.nginx_default_conf.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.nginx_default_conf.rendered}' > ../configs/nginx/default.conf"
  }
}

resource "null_resource" "nginx_ingest_conf" {
  triggers = {
    template_rendered = data.template_file.nginx_ingest_conf.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.nginx_ingest_conf.rendered}' > ../configs/nginx/ingest.conf"
  }
}

resource "null_resource" "nginx_worker_conf" {
  triggers = {
    template_rendered = data.template_file.nginx_worker_conf.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.nginx_worker_conf.rendered}' > ../configs/nginx/worker.conf"
  }
}

resource "null_resource" "nginx_lb_conf" {
  triggers = {
    template_rendered = data.template_file.nginx_lb_conf.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.nginx_lb_conf.rendered}' > ../configs/nginx/lb.conf"
  }
}
