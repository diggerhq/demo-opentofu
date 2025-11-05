terraform {
  cloud {
    hostname = "mo-digger-test.ngrok.app"
    organization = "org_01K89A2ZCCJHY1Z393WQ08BVDM"    
    workspaces {
      name = "20b6c1af-d636-4b06-9165-fdc3eceb4710"
    }
  }
}


resource "null_resource" "test6" {}

