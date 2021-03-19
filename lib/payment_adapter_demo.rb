# frozen_string_literal: true

require_relative "payment_adapter_demo/version"
require_relative "payment_adapter_demo/razorpay/razorpay"

module PaymentAdapterDemo
	class Error < StandardError; end
# Your code goes here...
  class Payment
  	def initialize(args**)
  		@adapter = args[:adapter]
  	end
  end
end
