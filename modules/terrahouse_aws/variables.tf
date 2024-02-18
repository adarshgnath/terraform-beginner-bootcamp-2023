variable "user_uuid" {
  description = "The UUID of the user"
  type        = string
  validation {
    condition        = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", var.user_uuid))
    error_message    = "The user_uuid value is not a valid UUID."
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

  validation {
    condition     = (
      length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63 && 
      can(regex("^[a-z0-9][a-z0-9-.]*[a-z0-9]$", var.bucket_name))
    )
    error_message = "The bucket name must be between 3 and 63 characters, start and end with a lowercase letter or number, and can contain only lowercase letters, numbers, hyphens, and dots."
  }
}

variable "path_index_html" {
  description = "path showing to index.html file"
  type        = string

  validation {
    condition     = fileexists(var.path_index_html)
    error_message = "provide path for index html doesnt exist"
  }
}

variable "path_error_html" {
  description = "path showing to error.html file"
  type        = string

  validation {
    condition     = fileexists(var.path_error_html)
    error_message = "provide path for error html doesnt exist"
  }
}

variable "content_variable" {
  type        = number
  description = "The version of the content"

  validation {
    condition     = var.content_variable > 0 && floor(var.content_variable) == var.content_variable
    error_message = "content_version must be a positive integer"
  }
}