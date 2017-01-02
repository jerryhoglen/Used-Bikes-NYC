if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_x6t6e1pX7JBsOIrdN4LDXJ9B',
		:secret_key => 'sk_test_Z5UsHwJZr7sqL8BszKDNzlhw'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
