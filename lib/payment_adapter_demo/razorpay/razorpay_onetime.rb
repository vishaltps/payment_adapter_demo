# require 'razorpay_api'

module PaymentAdapterDemo::Razorpay
  class RazorpayOnetime
    attr_accessor :api_key, :secret_key, :enviroment

    def initialize(**args)
      @api_key = args[:api_key]
      @secret_key = args[:secret_key]
      @enviroment = args[:enviroment]
    end

    def print_hello_world
      return "Hello World new !! #{api_key} and #{secret_key}"
    end

    def preview(*)
      razorpay_subscription = RazorpayApi.create_subscription(
          credentials,
          subscription_plan,
          subscriber,
          opts.dig(:trial_period_duration)
        )
    end

    def credentials
      {api_key: api_key, secret_key: secret_key, enviroment: enviroment}
    end
  end
end