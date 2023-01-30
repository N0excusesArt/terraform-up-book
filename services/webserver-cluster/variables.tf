# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------


variable "cluster_name" {

  description = "The name to be used for all the cluster resources"
  type        = string
}
variable "db_remote_state_bucket" {
  description = "The name of the s3 bucket for the remote datatbase state"
  type        = string
  default     = "tfstate-bucket-for-the-book-33"
}

variable "db_remote_state_key" {
  description = "The path in the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instances to run (e.g t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minium number of EC2 instances on the ASG"
  type        = number
}
variable "max_size" {
  description = "The max number of EC2 instances on the ASG"
  type        = number
}
# variable "db_remote_state_bucket" {
#   description = "The name of the S3 bucket used for the database's remote state storage"
#   type        = string
#   default     = "future-cloud-engineer-33"
# }

# variable "db_remote_state_key" {
#   description = "The name of the key in the S3 bucket used for the database's remote state storage"
#   type        = string
#   default     = "stage/data-stores/mysql/terraform.tfstate"
# }

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

