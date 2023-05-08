module "static_site" {
  source      = "m4xmorris/static-site/digitalocean"
  version     = "1.2.1"
  site_name   = "kelstonnet"
  description = "Personal Website"
  environment = "Production"
  region      = "lon"
  domain      = "kelston.net"
  source_repo = "Kelston-Spokes/kelstonnet"
  source_branches = {
    "main" = "/"
  }
  source_dir         = "hugo"
  output_dir         = "public"
  build_command      = "hugo -d public"
  manage_dns         = true
  cloudflare_zone_id = var.cloudflare_zone_id
  alert_policy = [
    "DOMAIN_LIVE",
    "DEPLOYMENT_LIVE",
    "DOMAIN_FAILED",
    "DEPLOYMENT_FAILED"
  ]
}
