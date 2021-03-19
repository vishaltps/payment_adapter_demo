require 'razorpay_api'

module PaymentAdapterDemo::Razorpay
  class RazorpayRecurring
    attr_accessor :api_key, :secret_key

    def initialize(**args)
      @api_key = args[:api_key]
      @secret_key = args[:secret_key]
    end

    def preview(subscription_plan:, subscriber:, params:, opts:)
      razorpay_subscription = RazorpayApi.create_subscription(
          {api_key: api_key, secret_key: secret_key},
          subscription_plan,
          subscriber,
          opts.dig(:trial_period_duration)
        )

        return PaymentResult.error('razorpay_recurring', message: 'Remote Subscritpion could not be created') unless razorpay_subscription

        subscription_attempt = params[:subscription_attempt]
        subscription_attempt&.update(external_reference_id: razorpay_subscription.id)
        nil
    end
  end
end