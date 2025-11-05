terraform {
  cloud {
    hostname = "mo-digger-test.ngrok.app"
    organization = "org_01K89A2ZCCJHY1Z393WQ08BVDM"    
    workspaces {
      name = "e20883a2-9a92-4769-b579-94a908ec3bbb"
    }
  }
}

resource "null_resource" "test1" {}

