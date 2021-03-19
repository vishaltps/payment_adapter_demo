module PaymentAdapterDemo::Razorpay
	class RazorpayApi
		class << self
			def create_subscription(credentials, plan, subscriber, trial_period_duration)
				Client.new(RAZORPAY_CONFIG, credentials).create_subscription(plan, subscriber, trial_period_duration)
			end
		end
		# def client
		# 	@client ||= Client.new(RAZORPAY_CONFIG, credentials)
		# end
	end
end