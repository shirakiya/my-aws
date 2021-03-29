resource "aws_organizations_account" "shirakiya" {
  name      = "shirakiya"
  email     = var.shirakiya_email
  parent_id = aws_organizations_organizational_unit.shirakiya_private.id

  lifecycle {
    ignore_changes = [role_name]
  }
}

resource "aws_organizations_account" "torii" {
  name      = "torii"
  email     = var.torii_email
  parent_id = aws_organizations_organizational_unit.shirakiya_private.id

  lifecycle {
    ignore_changes = [role_name]
  }
}
