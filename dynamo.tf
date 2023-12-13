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

resource "aws_dynamodb_table_item" "todo" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key


  item = <<ITEM
{
  "task": {"S": "something"},
  "id": {"S": "1111"},
  "done": {"S": "done"}
}
ITEM
}