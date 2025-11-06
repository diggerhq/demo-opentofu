terraform {
  cloud {
    hostname = "otaco.app"
    organization = "org_01K98XKY30W9P5NQEENQ5B5YE6"    
    workspaces {
      name = "1862270c-cfbd-4f29-899b-4871497a89cf"
    }
  }
}

resource "null_resource" "test2" {}
