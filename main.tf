module "ghost-db" {
  source              = "./ghost-database"
  name                = "samuelerescablog-db"

  db_name             = var.db_name
  db_user             = var.db_user
  db_pass             = var.db_pass
  security_groups     = [aws_security_group.ghost-db.id]
}

module "samuelerescablog-server" {
  source                  = "./ghost-server"
  name                    = "samuelerescablog-instance-${formatdate("YYYYMMDDhhmmss", timestamp())}"
  domain_name             = var.domain_name

  db_host                 = module.ghost-db.db-host
  db_name                 = module.ghost-db.db-name
  db_user                 = module.ghost-db.db-user
  db_pass                 = module.ghost-db.db-pass
  ses_server_name         = var.ses_server_name
  ses_user                 = var.ses_user
  ses_pass                 = var.ses_pass

  key_pair_name           = var.key_pair_name
  key_pair_loc            = var.key_pair_location
  security_groups         = [aws_security_group.ghost-server.id]

  cloudfront_ssl_acm_arn  = var.cloudfront_ssl_acm_arn
}