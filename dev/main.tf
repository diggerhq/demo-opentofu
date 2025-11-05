terraform {
  cloud {
    hostname = "mo-digger-test.ngrok.app"
    organization = "org_01K89A2ZCCJHY1Z393WQ08BVDM"    
    workspaces {
      name = "26c3fd0a-6b7f-4985-8265-e1bf999f3924"
    }
  }
}


resource "null_resource" "test6" {}

