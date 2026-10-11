output "servicecatalog_organizations_accesses_id" {
  description = "Map of id values across all servicecatalog_organizations_accesses, keyed the same as var.servicecatalog_organizations_accesses"
  value       = { for k, v in aws_servicecatalog_organizations_access.servicecatalog_organizations_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servicecatalog_organizations_accesses_enabled" {
  description = "Map of enabled values across all servicecatalog_organizations_accesses, keyed the same as var.servicecatalog_organizations_accesses"
  value       = { for k, v in aws_servicecatalog_organizations_access.servicecatalog_organizations_accesses : k => v.enabled if v.enabled != null }
}

