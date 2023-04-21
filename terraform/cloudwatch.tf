resource "aws_cloudwatch_log_group" "get_all_authors" { 
  name = "/aws/lambda/get-all-authors" 
  tags = module.base_labels.tags 
} 
 
resource "aws_cloudwatch_log_group" "get_all_courses" { 
  name = "/aws/lambda/get-all-courses" 
  tags = module.base_labels.tags 
}

resource "aws_cloudwatch_log_group" "get_one_course" { 
  name = "/aws/lambda/get-one-course" 
  tags = module.base_labels.tags 
}

resource "aws_cloudwatch_log_group" "save_course" { 
  name = "/aws/lambda/save_course" 
  tags = module.base_labels.tags 
}

resource "aws_cloudwatch_log_group" "delete_course" { 
  name = "/aws/lambda/delete_course" 
  tags = module.base_labels.tags 
}

resource "aws_cloudwatch_log_group" "update_course" { 
  name = "/aws/lambda/update_course" 
  tags = module.base_labels.tags 
}