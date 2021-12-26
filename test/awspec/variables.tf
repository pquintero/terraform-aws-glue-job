variable "aws_glue_default_service_role" {
  description = "Glue Default Service Role"
  default     = "arn:aws:iam::392514017703:role/service-role/AWSGlueServiceRole-S3"

}

variable "project_name" {
  type        = map(any)
  description = "Name of the project."
  default = {
    dev  = "bancoripleyperu-dm-dev"
    qa   = "bancoripleyperu-dm-qa"
    prod = "bancoripleyperu-dm-prod"
  }
}

variable "env" {
  description = "env: dev or qa or prod"
  type        = string
  # default = {
  #   dev  = "dev"
  #   qa   = "qa"
  #   prod = "prod"
  # }
}
