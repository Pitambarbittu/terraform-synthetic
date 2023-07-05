terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.25.0"
    }
  }
}

provider "newrelic" {
  account_id = 3995217
  api_key    = "NRAK-MGVNLF8LIB06M2KGCWO6BAZ8J5Y"
  region     = "US"
}