resource "newrelic_synthetics_monitor" "pitambar_simple_ping" {
  count            = length(var.ping_monitor_regions)
  status           = "ENABLED"
  name             = "pitambar simple monitor ${count.index + 1}"
  period           = "EVERY_MINUTE"
  uri              = "https://www.google.com"
  type             = "SIMPLE"
  locations_public = [var.ping_monitor_regions[count.index]]

  custom_header {
    name  = "pitambar header"
    value = "some_value"
  }

  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}



resource "newrelic_synthetics_monitor" "bittu_browser" {
  count            = length(var.browser_monitor_regions)
  status           = "ENABLED"
  name             = "bittu browser monitor ${count.index + 1}"
  period           = "EVERY_6_HOURS"
  uri              = "https://www.google.com"
  type             = "BROWSER"
  locations_public = [var.browser_monitor_regions[count.index]]

  custom_header {
    name  = "bittu header"
    value = "some_value"
  }

  enable_screenshot_on_failure_and_script = true
  validation_string                       = "success"
  verify_ssl                              = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}
