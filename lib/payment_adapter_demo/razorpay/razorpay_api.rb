require 'pry'
require 'client'

module PaymentAdapterDemo
	class RazorpayApi
		class << self
			def create_subscription(credentials,plan,subscriber,trial_period_duration)
				binding.pry
			end
		end
	end
end