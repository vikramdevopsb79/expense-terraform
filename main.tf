module "frontend" {
  depends_on = [module.backend]
  source = "git::https://github.com/vikramdevopsb79/tf-module-app.git"
  instance_type = var.components["Frontend"]["instance_type"]
  name          = var.components["Frontend"]["name"]
  env           = var.env
  port_no       = var.components["Frontend"]["port_no"]
  vault_token   = var.vault_token
  SSH_PASSWORD = var.SSH_PASSWORD
  prometheus_servers = var.prometheus_servers
  zone_id       = data.aws_route53_zone.main.zone_id
}

module "backend" {
  depends_on = [module.mysql]
  source = "git::https://github.com/vikramdevopsb79/tf-module-app.git"
  instance_type = var.components["backend"]["instance_type"]
  name          = var.components["backend"]["name"]
  env           = var.env
  port_no       = var.components["backend"]["port_no"]
  vault_token   = var.vault_token
  SSH_PASSWORD = var.SSH_PASSWORD
  prometheus_servers = var.prometheus_servers
  zone_id       = data.aws_route53_zone.main.zone_id

}

module "mysql" {
  source = "git::https://github.com/vikramdevopsb79/tf-module-app.git"
  instance_type = var.components["mysql"]["instance_type"]
  name          = var.components["mysql"]["name"]
  env           = var.env
  port_no       = var.components["mysql"]["port_no"]
  vault_token   = var.vault_token
  SSH_PASSWORD = var.SSH_PASSWORD
  prometheus_servers = var.prometheus_servers
  zone_id       = data.aws_route53_zone.main.zone_id

}