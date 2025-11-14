terraform {
  cloud {
    hostname = "otaco.app"
    organization = "org_01K98XKY30W9P5NQEENQ5B5YE6"    
    workspaces {
      name = "6b8f8d39-385a-4110-8df3-0b7c4be3b73d"
    }
  }
}
resource "null_resource" "test3" {}

