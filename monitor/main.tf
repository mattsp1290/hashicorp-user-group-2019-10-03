resource "datadog_monitor" "simple_monitor" {
    name               = "Simple monitor"
    type               = "metric alert"
    message            = "Monitor triggered."
    query = "avg(last_1h):avg:system.load.1{*} > 1.5"
}
