variable "name" {
    type = string
}

variable "budget_type" {
  type = string
}

variable "time_unit" {
  type = string
}

variable "time_period_start" {
  type = string
}

variable "auto_adjust_type" {
  type = string
}

variable "budget_adjustment_period" {
 type = number
}

variable "threshold" {
  type = number
}

variable "subscriber_email_addresses" {
  type = string
  
}
