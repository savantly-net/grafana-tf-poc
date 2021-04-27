provider "grafana" {
  url    = "http://localhost:3000/"
  auth   = "eyJrIjoiV3REOFlhaGtHaDJVdVFJWm11alM5T3BldUFtU0pKaDIiLCJuIjoidGYiLCJpZCI6MX0="
  org_id = 1
}

resource "grafana_data_source" "influxdb" {
  type          = "influxdb"
  name          = "tf_influxdb"
  url           = "http://influxdb:8086/"
  username      = "admin"
  password      = "admin"
  database_name = "test"

}

resource "grafana_folder" "gen_folder" {
  title = "Generated Dashboards"
}

data "template_file" "temp" {
  template = "${file("${path.module}/templates/dashboards/example.json")}"
  vars = {
    testvar = "app1"
  }
}

resource "local_file" "foo" {
    content     = data.template_file.temp.rendered
    filename = "${path.module}/generated/dashboards/foo.json"
}

resource "grafana_dashboard" "metrics" {
  //count = length(var.api_services)
  folder = grafana_folder.gen_folder.id
  config_json = data.template_file.temp.rendered
}
