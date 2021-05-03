provider "grafana" {
  url    = "http://localhost:3000/"
  auth   = "eyJrIjoiV3REOFlhaGtHaDJVdVFJWm11alM5T3BldUFtU0pKaDIiLCJuIjoidGYiLCJpZCI6MX0="
  org_id = 1
}

resource "grafana_folder" "gen_folder" {
  title = "Generated Dashboards"
}

module "metrics_panel_one" {
  source = "./modules/generated-panel"
  for_each = var.api_services
  id = 1
  name = "Foo"
  app_name = each.key
}

module "metrics_panel_two" {
  source = "./modules/generated-panel"
  for_each = var.api_services
  id = 2
  name = "bar"
  app_name = each.key
  pos_x = 12
}

module "metrics_dashboard" {
  source = "./modules/generated-dashboard"
  for_each = var.api_services
  app_name = each.key
  panels = [
    module.metrics_panel_one[each.key].panel_json,
    module.metrics_panel_two[each.key].panel_json
  ]
}

resource "grafana_dashboard" "metrics" {
  for_each = module.metrics_dashboard
  folder = grafana_folder.gen_folder.id
  config_json = each.value.dashboard_json
}