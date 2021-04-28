locals {
  dashboard_json = templatefile("${path.module}/templates/example.tpl", {
    app_name = var.app_name
    panels = var.panels
  })
}

resource "local_file" "foo" {
    content     = local.dashboard_json
    filename = "${path.root}/generated/dashboards/${var.app_name}.json"
}
