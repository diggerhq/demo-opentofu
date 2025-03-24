# Generate 10,000 null resources using count
resource "null_resource" "example" {
  count = 10000
  
  triggers = {
    id = count.index
  }
}

#variable "TEST" {
#  default = "hello"
#}

#variable "SECRET" {
#  default = "shhh"
#}

#output "test" {
#  value = var.TEST
#}

#output "secret" {
#  value = var.SECRET
#}

#output "secret2" {
#  value = var.SECRET
#}



