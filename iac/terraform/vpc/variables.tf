
variable "subnet_1_details" {
  type = object({
    cidr_block = string
  })
}

variable "subnet_2_details" {
  type = object({
    cidr_block = string
  })
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}
