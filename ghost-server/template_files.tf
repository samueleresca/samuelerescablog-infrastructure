# Configuration file
data "template_file" "ghost-config" {
    template = "${file("${path.module}/configs/config.production.json.tpl")}"

    vars = {
      mysql-host      = "${var.db_host}"
      mysql-db-name   = "${var.db_name}"
      mysql-user      = "${var.db_user}"
      mysql-pass      = "${var.db_pass}"
      domain-name     = "${var.domain_name}"
      ses-server-name = "${var.ses_server_name}"
      ses-user        = "${var.ses_user}"
      ses-pass        = "${var.ses_pass}"
    }
}

data "template_file" "nginx-site-config" {
    template = "${file("${path.module}/configs/nginx-site.tpl")}"

    vars = {
      domain-name   = "${var.domain_name}"
    }
}

data "template_file" "service-config" {
    template = "${file("${path.module}/configs/ghost.service.tpl")}"
}