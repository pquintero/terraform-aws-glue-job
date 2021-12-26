#provider "aws" {
#  profile ="aws-edit-392514017703"
#  region  = "us-east-1"
#}

module "terraform-aws-glue-job" {
  source = "../../"

  enable_glue_job   = true
  glue_job_name     = "${lookup(var.project_name, var.env)}-base-reconstruction"
  glue_job_role_arn = var.aws_glue_default_service_role

  glue_job_command = [
    {
      script_location = "s3://bancoripleype-dev-artifactory/jobs/demo-glue-job.py"
      name            = "glueetl"
      python_version  = 3
    }
  ]
  glue_version         = "3.0"
  glue_job_max_retries = 0
}