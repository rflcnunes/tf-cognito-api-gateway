resource "aws_dynamodb_table" "this" {
  hash_key       = "id"
  name           = var.service_name
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "S"
  }

  tags = local.common_tags
}