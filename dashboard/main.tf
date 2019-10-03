resource "datadog_dashboard" "ordered_dashboard" {
  title         = "Ordered Layout Dashboard"
  layout_type   = "ordered"

  widget {
    timeseries_definition {
      request {
        q = "avg:system.load.1{*}"
      }
    }
  }
}
