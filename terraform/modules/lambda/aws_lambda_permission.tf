resource "aws_lambda_permission" "api_gateway" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_get_all_authors.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_authors_path}"
}

resource "aws_lambda_permission" "api_gateway_get_all_courses" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_get_all_courses.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_courses_path}"
}

resource "aws_lambda_permission" "api_gateway_post_course" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_save_course.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_courses_path}"
}

resource "aws_lambda_permission" "api_gateway_delete_course" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_delete_course.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_courses_path}/{id}"
}

resource "aws_lambda_permission" "api_gateway_get_one_course" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_get_one_course.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_courses_path}/{id}"
}

resource "aws_lambda_permission" "api_gateway_update_course" { 
    statement_id = "AllowExecutionFromAPIGateway" 
    action = "lambda:InvokeFunction" 
    function_name = module.lambda_function_update_course.lambda_function_name 
    principal = "apigateway.amazonaws.com" 
    source_arn = "${var.aws_lambda_permission_api_gateway_source_arn}/*${var.aws_api_gateway_resource_courses_path}/{id}"
}