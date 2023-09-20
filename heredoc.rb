days_to_expiration=3

membership_text = <<-HEREBY
  Your membership will be expired in #{days_to_expiration} days. Please renew your payment method in order to benefit from our service.
HEREBY


print membership_text   #   Your membership will be expired in 3 days. Please renew your payment method in order to benefit from our service.
