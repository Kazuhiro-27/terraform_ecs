# variable "aws_region" {
#   description = "AWS region"
#   type        = string
#   default     = "us-west-2"
# }
# variable "project_name" {
#   description = "Name of the project"
#   type        = string
# }
# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type        = string
# }
# variable "private_subnet_cidrs" {
#   description = "CIDR blocks for private subnets"
#   type        = list(string)
# }
# variable "availability_zones" {
#   description = "List of availability zones"
#   type        = list(string)
# }
# variable "task_cpu" {
#   description = "CPU units for the ECS task"
#   type        = number
# }
# variable "task_memory" {
#   description = "Memory for the ECS task in MiB"
#   type        = number
# }
# variable "container_name" {
#   description = "Name of the container"
#   type        = string
# }


# variable "container_image" {
#   description = "Docker image for the container"
#   type        = string
# }

# variable "container_port" {
#   description = "Port exposed by the container"
#   type        = number
# }

# variable "desired_count" {
#   description = "Desired number of tasks"
#   type        = number
# }