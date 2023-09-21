module "monthly_budget" {
    source = "../aws_budget"
    name = var.name
    budget_type = var.budget_type
    time_unit = var.time_unit
    time_period_start = var.time_period_start
    auto_adjust_type = var.auto_adjust_type
    budget_adjustment_period = var.budget_adjustment_period
    threshold = var.threshold 
    subscriber_email_addresses = var.subscriber_email_addresses
}