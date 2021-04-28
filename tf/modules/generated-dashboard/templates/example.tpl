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
  "type": "graph",
  "title": "dummy panel",
  "gridPos": {
    "x": 0,
    "y": 0,
    "w": 12,
    "h": 9
  },
  "id": 23763571993,
  "targets": [
    {
      "refId": "A",
      "queryType": "randomWalk"
    }
  ],
  "options": {
    "alertThreshold": true
  },
  "fieldConfig": {
    "defaults": {},
    "overrides": []
  },
  "pluginVersion": "7.5.4",
  "renderer": "flot",
  "yaxes": [
    {
      "label": null,
      "show": true,
      "logBase": 1,
      "min": null,
      "max": null,
      "format": "short"
    },
    {
      "label": null,
      "show": true,
      "logBase": 1,
      "min": null,
      "max": null,
      "format": "short"
    }
  ],
  "xaxis": {
    "show": true,
    "mode": "time",
    "name": null,
    "values": [],
    "buckets": null
  },
  "yaxis": {
    "align": false,
    "alignLevel": null
  },
  "lines": true,
  "fill": 1,
  "linewidth": 1,
  "dashLength": 10,
  "spaceLength": 10,
  "pointradius": 2,
  "legend": {
    "show": true,
    "values": false,
    "min": false,
    "max": false,
    "current": false,
    "total": false,
    "avg": false
  },
  "nullPointMode": "null",
  "tooltip": {
    "value_type": "individual",
    "shared": true,
    "sort": 0
  },
  "aliasColors": {},
  "seriesOverrides": [],
  "thresholds": [],
  "timeRegions": [],
  "fillGradient": 0,
  "dashes": false,
  "hiddenSeries": false,
  "points": false,
  "bars": false,
  "stack": false,
  "percentage": false,
  "steppedLine": false,
  "timeFrom": null,
  "timeShift": null,
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