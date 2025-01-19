
provider "random" {}

resource "random_string" "test_string" {
  length           = 16
  special          = true
  upper            = true
  lower            = true
  numeric          = true
}

resource "random_string" "test_string2" {
  length           = 12
  special          = true
  upper            = true
  lower            = true
  numeric          = true
}

output "generated_string" {
  value = random_string.test_string.result
}