output "name" {
  description = "Name required for tests"
  value       = element(concat(module.terraform-aws-glue-job.*.id, [""]), 0)
}