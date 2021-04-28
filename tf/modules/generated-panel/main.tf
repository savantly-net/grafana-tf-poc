locals {
  panel_json = templatefile("${path.module}/templates/randomWalk.json", {
      app_name = var.app_name
  })
}

resource "local_file" "foo" {
    content     = local.panel_json
    filename = "${path.root}/generated/panels/${var.app_name}-randomWalk-panel.json"
}
