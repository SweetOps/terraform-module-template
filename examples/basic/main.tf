module "aweasome_module" {
  source     = "../../"
  name       = "aweasome"
  stage      = "production"
  namespace  = "sweetops"
  attributes = var.attributes
}

output "id" {
  value       = module.aweasome_module.id
  description = "ID"
}
