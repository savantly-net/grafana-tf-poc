{
    "annotations": {
      "list": [
        {
          "builtIn": 1,
          "datasource": "-- Grafana --",
          "enable": true,
          "hide": true,
          "iconColor": "rgba(0, 211, 255, 1)",
          "name": "Annotations & Alerts",
          "type": "dashboard"
        }
      ]
    },
    "editable": true,
    "gnetId": null,
    "graphTooltip": 0,
    "id": null,
    "links": [],
    "panels": [
      %{ for panel in panels ~}
      ${panel},
      %{ endfor ~}
      {
        "type": "text",
        "title": "info",
        "gridPos": {
          "x": 0,
          "y": 1,
          "w": 12,
          "h": 2
        },
        "id": 23763571993,
        "targets": [
          {
            "refId": "A",
            "queryType": "randomWalk"
          }
        ],
        "options": {
          "mode": "markdown",
          "content": "This dashboard was generated"
        },
        "fieldConfig": {
          "defaults": {},
          "overrides": []
        },
        "pluginVersion": "7.5.4",
        "timeFrom": null,
        "timeShift": null,
        "description": "",
        "datasource": null
      }
    ],
    "schemaVersion": 27,
    "style": "dark",
    "tags": [],
    "templating": {
      "list": []
    },
    "time": {
      "from": "now-6h",
      "to": "now"
    },
    "timepicker": {},
    "timezone": "",
    "title": "${app_name}",
    "uid": null,
    "version": 0
  }