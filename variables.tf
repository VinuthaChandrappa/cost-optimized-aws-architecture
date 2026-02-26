variable "common_tags" {
  description = "Mandatory tags for all resources"
  type        = map(string)

  validation {
    condition = (
      contains(keys(var.common_tags), "Environment") &&
      contains(keys(var.common_tags), "Owner") &&
      contains(keys(var.common_tags), "Project") &&
      contains(keys(var.common_tags), "CostCenter")
    )

    error_message = "You must provide Environment, Owner, Project, and CostCenter tags."
  }
}