terraform {
  cloud {
    hostname = "mo-digger-test.ngrok.app"
    organization = "org_01K89A2ZCCJHY1Z393WQ08BVDM"    
    workspaces {
      name = "10976c31-66e9-4472-89e4-8557858e365b"
    }
  }
}

resource "null_resource" "test7" {}

