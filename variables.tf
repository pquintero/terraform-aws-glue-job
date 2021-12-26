#---------------------------------------------------
# AWS Glue job
#---------------------------------------------------
variable "environment" {
  description = "Environment for service"
  default     = "STAGE"
}

variable "enable_glue_job" {
  description = "Enable glue job usage"
  default     = false
}

variable "glue_job_name" {
  description = "The name you assign to this job. It must be unique in your account."
  default     = ""
}

variable "glue_job_role_arn" {
  description = "The ARN of the IAM role associated with this job."
  default     = null
}

variable "glue_job_command" {
  description = "(Required) The command of the job."
  default     = []
}

variable "glue_job_description" {
  description = "(Optional) Description of the job."
  default     = null
}

variable "glue_job_connections" {
  description = "(Optional) The list of connections used for this job."
  default     = null
}

variable "glue_job_additional_connections" {
  description = "(Optional) The list of connections used for the job."
  default     = []
}

variable "glue_job_default_arguments" {
  description = "(Optional) The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide."
  default = {
    "--job-language"            = "python"
    "--enable-glue-datacatalog" = true
    "--extra-jars"              = "s3://bancoripleype-dev-artifactory/libs/httpclient-4.5.13.jar,s3://bancoripleype-dev-artifactory/libs/hudi-spark-bundle_2.11-0.8.0.jar,s3://bancoripleype-dev-artifactory/libs/spark-avro_2.11-2.4.3.jar"
    "--enable-metrics"          = true
    "--job-bookmark-option"     = "job-bookmark-disable"
  }
}

variable "glue_job_execution_property" {
  description = "(Optional) Execution property of the job."
  default     = []
}

variable "glue_version" {
  description = "(Optional) The version of glue to use, for example '1.0'. For information about available versions, see the AWS Glue Release Notes."
  default     = null
}

variable "glue_job_max_capacity" {
  description = "(Optional) The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. Required when pythonshell is set, accept either 0.0625 or 1.0."
  default     = null
}

variable "glue_job_max_retries" {
  description = "(Optional) The maximum number of times to retry this job if it fails."
  default     = null
}

variable "glue_job_notification_property" {
  description = "(Optional) Notification property of the job."
  default     = []
}

variable "glue_job_timeout" {
  description = "(Optional) The job timeout in minutes. The default is 2880 minutes (48 hours)."
  default     = 2880
}

variable "glue_job_security_configuration" {
  description = "(Optional) The name of the Security Configuration to be associated with the job."
  default     = null
}

variable "glue_job_worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X."
  default     = null
}

variable "glue_job_number_of_workers" {
  description = "(Optional) The number of workers of a defined workerType that are allocated when a job runs."
  default     = null
}

#---------------------------------------------------
# AWS Glue connection
#---------------------------------------------------
variable "enable_glue_connection" {
  description = "Enable glue connection usage"
  default     = false
}

variable "glue_connection_name" {
  description = "The name of the connection."
  default     = ""
}

variable "glue_connection_connection_properties" {
  description = "(Required) A map of key-value pairs used as parameters for this connection."
  default     = {}
}

variable "glue_connection_description" {
  description = "(Optional) Description of the connection."
  default     = null
}

variable "glue_connection_catalog_id" {
  description = "(Optional) The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default."
  default     = null
}

variable "glue_connection_connection_type" {
  description = "(Optional) The type of the connection. Supported are: JDBC, MONGODB. Defaults to JDBC."
  default     = "JDBC"
}

variable "glue_connection_match_criteria" {
  description = "(Optional) A list of criteria that can be used in selecting this connection."
  default     = null
}

variable "glue_connection_physical_connection_requirements" {
  description = "(Optional) A map of physical connection requirements, such as VPC and SecurityGroup. "
  default     = []
}
