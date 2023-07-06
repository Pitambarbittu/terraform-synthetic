tsm = [
  {
    status           = "ENABLED",
    name             = "pitambar-ping",
    period           = "EVERY_6_HOURS",
    type             = "SIMPLE",
    locations_public = ["AP_SOUTH_1"],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value1"]
  },

  {
    name   = "pitambar-PING-2",
    type   = "SIMPLE",
    period = "EVERY_6_HOURS",
    status = "ENABLED",

    locations_public = ["AP_SOUTH_1 "],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value"]

  },

  {
    name   = "pitambar-PING-3",
    type   = "SIMPLE",
    period = "EVERY_6_HOURS",
    status = "ENABLED",

    locations_public = ["AP_SOUTH_1 "],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value"]

  },
]


tsm_1 = [

  {
    name   = "pitambar-browser",
    type   = "BROWSER",
    period = "EVERY_6_HOURS",
    status = "ENABLED",

    locations_public = ["AP_SOUTH_1 "],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value"]

  },
  {
    name   = "pitambar-browser-2",
    type   = "BROWSER",
    period = "EVERY_6_HOURS",
    status = "ENABLED",

    locations_public = ["AP_SOUTH_1 "],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value"]

  },
  {
    name   = "pitambar-browser-3",
    type   = "BROWSER",
    period = "EVERY_6_HOURS",
    status = "ENABLED",

    locations_public = ["AP_SOUTH_1 "],
    verify_ssl       = true,

    key    = "pitambar_key1",
    values = ["practice_value"]

  },
]












