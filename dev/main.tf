terraform {
  cloud {
    hostname = "mo-digger-test.ngrok.app"
    organization = "org_01K89A2ZCCJHY1Z393WQ08BVDM"    
    workspaces {
      name = "17f98e72-3c16-4e08-9b01-ad78a1eb05ed"
    }
  }
}

resource "null_resource" "test1" {}

