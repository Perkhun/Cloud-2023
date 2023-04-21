variable "dynamo_db_authors_arn" {
  type = string
}

variable "dynamo_db_courses_arn" {
  type = string
}

# variable "dynamo_db_course_arn" {
#   type = string
# }

# variable "dynamo_db_save_course_arn" {
#   type = string
# }

# variable "dynamo_db_delete_course_arn" {
#   type = string
# }

# variable "dynamo_db_update_course_arn" {
#   type = string
# }

variable "cw_log_group_get_all_courses_arn" {
  type = string
}

variable "cw_log_group_get_all_authors_arn" {
  type = string
}

variable "cw_log_group_get_one_course_arn" {
  type = string
}

variable "cw_log_group_save_course_arn" {
  type = string
}

variable "cw_log_group_update_course_arn" {
  type = string
}

variable "cw_log_group_delete_course_arn" {
  type = string
}