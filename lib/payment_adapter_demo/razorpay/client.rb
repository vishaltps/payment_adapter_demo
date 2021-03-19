module PaymentAdapterDemo::Razorpay
	class client
		attr_reader :config, :credentials

    def initialize(config, credentials)
      @config = config
      @credentials = credentials
    end

		def create_subscription(subscription_plan, subscriber, trial_period_duration = nil)
      razorpay_plan_id = subscription_plan.metadata.dig('razorpay', 'plan_id')
      total_count = calculate_subscription_total_count(subscription_plan)
      params = { plan_id: razorpay_plan_id, total_count: total_count }

      if subscriber.present?
        start_time = subscriber.most_suitable_start_timestamp(subscription_plan)
        start_time += trial_period_duration if trial_period_duration
        params[:start_at] = start_time.to_i if start_time > Time.zone.now
      end
      response = client.post('/v1/subscriptions', params)
      if response.code == 200
        subscription = Razorpay::Subscription.new(response.parsed_response, config, credentials)
        subscription
      else
        error_logger(system: 'RAZORPAY', message: "Recieved #{response.code} while creating recurring subscription #{credentials['app_key']}:#{params[:plan_id]}")
        nil
      end
    end
	end
end