data "aws_organizations_organization" "org" {}

resource "aws_organizations_organizational_unit" "shirakiya_private" {
  name = "shirakiya-private"
  # Root id
  parent_id = data.aws_organizations_organization.org.roots[0].id
}
