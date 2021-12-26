## Usage

```sh
module "terraform-aws-glue-job" {
  source  = ""
  version = "0.0.1"
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.68.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.68.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_glue_job.glue_job](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_glue_connection"></a> [enable\_glue\_connection](#input\_enable\_glue\_connection) | Enable glue connection usage | `bool` | `false` | no |
| <a name="input_enable_glue_job"></a> [enable\_glue\_job](#input\_enable\_glue\_job) | Enable glue job usage | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for service | `string` | `"STAGE"` | no |
| <a name="input_glue_connection_catalog_id"></a> [glue\_connection\_catalog\_id](#input\_glue\_connection\_catalog\_id) | (Optional) The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default. | `any` | `null` | no |
| <a name="input_glue_connection_connection_properties"></a> [glue\_connection\_connection\_properties](#input\_glue\_connection\_connection\_properties) | (Required) A map of key-value pairs used as parameters for this connection. | `map` | `{}` | no |
| <a name="input_glue_connection_connection_type"></a> [glue\_connection\_connection\_type](#input\_glue\_connection\_connection\_type) | (Optional) The type of the connection. Supported are: JDBC, MONGODB. Defaults to JDBC. | `string` | `"JDBC"` | no |
| <a name="input_glue_connection_description"></a> [glue\_connection\_description](#input\_glue\_connection\_description) | (Optional) Description of the connection. | `any` | `null` | no |
| <a name="input_glue_connection_match_criteria"></a> [glue\_connection\_match\_criteria](#input\_glue\_connection\_match\_criteria) | (Optional) A list of criteria that can be used in selecting this connection. | `any` | `null` | no |
| <a name="input_glue_connection_name"></a> [glue\_connection\_name](#input\_glue\_connection\_name) | The name of the connection. | `string` | `""` | no |
| <a name="input_glue_connection_physical_connection_requirements"></a> [glue\_connection\_physical\_connection\_requirements](#input\_glue\_connection\_physical\_connection\_requirements) | (Optional) A map of physical connection requirements, such as VPC and SecurityGroup. | `list` | `[]` | no |
| <a name="input_glue_job_additional_connections"></a> [glue\_job\_additional\_connections](#input\_glue\_job\_additional\_connections) | (Optional) The list of connections used for the job. | `list` | `[]` | no |
| <a name="input_glue_job_command"></a> [glue\_job\_command](#input\_glue\_job\_command) | (Required) The command of the job. | `list` | `[]` | no |
| <a name="input_glue_job_connections"></a> [glue\_job\_connections](#input\_glue\_job\_connections) | (Optional) The list of connections used for this job. | `any` | `null` | no |
| <a name="input_glue_job_default_arguments"></a> [glue\_job\_default\_arguments](#input\_glue\_job\_default\_arguments) | (Optional) The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide. | `map` | <pre>{<br>  "--enable-glue-datacatalog": true,<br>  "--enable-metrics": true,<br>  "--extra-jars": "s3://bancoripleype-dev-artifactory/libs/httpclient-4.5.13.jar,s3://bancoripleype-dev-artifactory/libs/hudi-spark-bundle_2.11-0.8.0.jar,s3://bancoripleype-dev-artifactory/libs/spark-avro_2.11-2.4.3.jar",<br>  "--job-bookmark-option": "job-bookmark-disable",<br>  "--job-language": "python"<br>}</pre> | no |
| <a name="input_glue_job_description"></a> [glue\_job\_description](#input\_glue\_job\_description) | (Optional) Description of the job. | `any` | `null` | no |
| <a name="input_glue_job_execution_property"></a> [glue\_job\_execution\_property](#input\_glue\_job\_execution\_property) | (Optional) Execution property of the job. | `list` | `[]` | no |
| <a name="input_glue_job_max_capacity"></a> [glue\_job\_max\_capacity](#input\_glue\_job\_max\_capacity) | (Optional) The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. Required when pythonshell is set, accept either 0.0625 or 1.0. | `any` | `null` | no |
| <a name="input_glue_job_max_retries"></a> [glue\_job\_max\_retries](#input\_glue\_job\_max\_retries) | (Optional) The maximum number of times to retry this job if it fails. | `any` | `null` | no |
| <a name="input_glue_job_name"></a> [glue\_job\_name](#input\_glue\_job\_name) | The name you assign to this job. It must be unique in your account. | `string` | `""` | no |
| <a name="input_glue_job_notification_property"></a> [glue\_job\_notification\_property](#input\_glue\_job\_notification\_property) | (Optional) Notification property of the job. | `list` | `[]` | no |
| <a name="input_glue_job_number_of_workers"></a> [glue\_job\_number\_of\_workers](#input\_glue\_job\_number\_of\_workers) | (Optional) The number of workers of a defined workerType that are allocated when a job runs. | `any` | `null` | no |
| <a name="input_glue_job_role_arn"></a> [glue\_job\_role\_arn](#input\_glue\_job\_role\_arn) | The ARN of the IAM role associated with this job. | `any` | `null` | no |
| <a name="input_glue_job_security_configuration"></a> [glue\_job\_security\_configuration](#input\_glue\_job\_security\_configuration) | (Optional) The name of the Security Configuration to be associated with the job. | `any` | `null` | no |
| <a name="input_glue_job_timeout"></a> [glue\_job\_timeout](#input\_glue\_job\_timeout) | (Optional) The job timeout in minutes. The default is 2880 minutes (48 hours). | `number` | `2880` | no |
| <a name="input_glue_job_worker_type"></a> [glue\_job\_worker\_type](#input\_glue\_job\_worker\_type) | (Optional) The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X. | `any` | `null` | no |
| <a name="input_glue_version"></a> [glue\_version](#input\_glue\_version) | (Optional) The version of glue to use, for example '1.0'. For information about available versions, see the AWS Glue Release Notes. | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_glue_job_arn"></a> [glue\_job\_arn](#output\_glue\_job\_arn) | Amazon Resource Name (ARN) of Glue Job |
| <a name="output_glue_job_id"></a> [glue\_job\_id](#output\_glue\_job\_id) | Glue job name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Test

```sh
gem install bundler
bundle install --jobs 4 --retry 3
bundle exec kitchen test
```

## Doc

```sh
pre-commit run -a
```

## Autor
 
Module managed by [pquintero](https://github.com/pquintero/terraform-aws-glue-job.git)