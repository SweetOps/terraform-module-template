module "label" {
  source              = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.16.0"
  enabled             = var.enabled
  namespace           = var.namespace
  stage               = var.stage
  name                = var.name
  delimiter           = var.delimiter
  attributes          = var.attributes
  tags                = var.tags
  additional_tag_map  = var.additional_tag_map
  context             = var.context
  label_order         = var.label_order
  regex_replace_chars = var.regex_replace_chars
}
