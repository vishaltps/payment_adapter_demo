# frozen_string_literal: true

require 'pry'
require 'httparty'
require_relative "payment_adapter_demo/version"
require_relative "payment_adapter_demo/constants"
require_relative "payment_adapter_demo/razorpay/razorpay_onetime"
require_relative "payment_adapter_demo/razorpay/razorpay_api"
require_relative "payment_adapter_demo/razorpay/razorpay_recurring"
require_relative "payment_adapter_demo/razorpay/client"
require_relative "payment_adapter_demo/razorpay/api_client"

module PaymentAdapterDemo
	class Error < StandardError; end
# Your code goes here...
  class Payment
  	def initialize(**args)
  		@adapter = args[:adapter]
  	end
  end
end
