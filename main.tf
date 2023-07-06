resource "newrelic_synthetics_monitor" "pitambar_simple_ping" {
  count            = length(var.tsm)
  status           = lookup(var.tsm[count.index], "status")
  name             = lookup(var.tsm[count.index], "name")
  period           = lookup(var.tsm[count.index], "period")
  uri              = "https://www.google.com"
  type             = lookup(var.tsm[count.index], "type")
  locations_public = lookup(var.tsm[count.index], "locations_public")

  verify_ssl = lookup(var.tsm[count.index], "verify_ssl")

  tag {
    key    = lookup(var.tsm[count.index], "key")
    values = lookup(var.tsm[count.index], "values")
  }
}


resource "newrelic_synthetics_monitor" "bittu_browser" {
  count            = length(var.tsm_1)
  status           = lookup(var.tsm_1[count.index], "status")
  name             = lookup(var.tsm_1[count.index], "name")
  period           = lookup(var.tsm_1[count.index], "period")
  uri              = "https://www.google.com"
  type             = lookup(var.tsm_1[count.index], "type")
  locations_public = lookup(var.tsm_1[count.index], "locations_public")

  verify_ssl = lookup(var.tsm_1[count.index], "verify_ssl")


  tag {
    key    = lookup(var.tsm_1[count.index], "key")
    values = lookup(var.tsm_1[count.index], "values")
  }
}
