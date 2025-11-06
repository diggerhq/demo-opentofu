terraform {
  cloud {
    hostname = "otaco.app"
    organization = "org_01K98XKY30W9P5NQEENQ5B5YE6"    
    workspaces {
      name = "d3fefb68-ec0c-4f2d-a971-13986c2e38c8"
    }
  }
}

resource "null_resource" "test2" {}
