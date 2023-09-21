provider "aws" {
  region = "us-east-1"
}

 resource "aws_budgets_budget" "monthly" {
   name              = var.name
   budget_type       = var.budget_type
   time_unit         = var.time_unit
   time_period_start = var.time_period_start
   auto_adjust_data {
    auto_adjust_type = var.auto_adjust_type
    historical_options {
        budget_adjustment_period = var.budget_adjustment_period
    }
   }
   notification {
     comparison_operator        = "GREATER_THAN"
     threshold                  = var.threshold
     threshold_type             = "PERCENTAGE"
     notification_type          = "ACTUAL"
     subscriber_email_addresses = [var.subscriber_email_addresses]
   }
 }
