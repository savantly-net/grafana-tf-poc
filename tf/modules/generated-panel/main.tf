locals {
  panel_json = templatefile("${path.module}/templates/randomWalk.json", {
      id = var.id
      name = var.name
      app_name = var.app_name
      pos = {
        x = var.pos_x
        y = var.pos_y
        h = var.pos_h
        w = var.pos_w
      }
  })
}

resource "local_file" "foo" {
    content     = local.panel_json
    filename = "${path.root}/generated/panels/${var.app_name}-randomWalk-panel.json"
}
