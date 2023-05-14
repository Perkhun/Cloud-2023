module "iam" { 
  source = "./modules/iam" 
  context = module.base_labels.context 
  name = "iam" 
  dynamo_db_authors_arn = module.authors.arn 
  dynamo_db_courses_arn = module.course.arn 
  cw_log_group_get_all_authors_arn = module.lambda.cw_log_group_get_all_authors_arn 
  cw_log_group_get_all_courses_arn = module.lambda.cw_log_group_get_all_courses_arn 
  cw_log_group_get_one_course_arn = module.lambda.cw_log_group_get_one_course_arn 
  cw_log_group_save_course_arn = module.lambda.cw_log_group_save_course_arn 
  cw_log_group_update_course_arn = module.lambda.cw_log_group_update_course_arn 
  cw_log_group_delete_course_arn = module.lambda.cw_log_group_delete_course_arn 
} 
 
module "lambda" { 
  source = "./modules/lambda" 
  context = module.base_labels.context 
  name = "lambda" 
  dynamo_db_authors_name = module.authors.id 
  dynamo_db_courses_name = module.course.id 
  get_all_authors_role_arn = module.iam.get_all_authors_role_arn 
  get_all_courses_role_arn = module.iam.get_all_courses_role_arn 
  get_one_course_role_arn = module.iam.get_one_course_role_arn 
  save_course_role_arn = module.iam.save_course_role_arn 
  update_course_role_arn = module.iam.update_course_role_arn 
  delete_course_role_arn = module.iam.delete_course_role_arn 
  aws_lambda_permission_api_gateway_source_arn = aws_api_gateway_rest_api.this.execution_arn 
  aws_api_gateway_resource_authors_id = aws_api_gateway_resource.authors.id 
  aws_api_gateway_resource_authors_path = aws_api_gateway_resource.authors.path 
  aws_api_gateway_resource_courses_id = aws_api_gateway_resource.courses.id 
  aws_api_gateway_resource_courses_path = aws_api_gateway_resource.courses.path 
}