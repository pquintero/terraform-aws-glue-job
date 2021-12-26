#---------------------------------------------------
# AWS Glue job
#---------------------------------------------------
output "glue_job_id" {
  description = "Glue job name"
  value       = element(concat(aws_glue_job.glue_job.*.id, [""]), 0)
}

output "glue_job_arn" {
  description = "Amazon Resource Name (ARN) of Glue Job"
  value       = element(concat(aws_glue_job.glue_job.*.arn, [""]), 0)
}