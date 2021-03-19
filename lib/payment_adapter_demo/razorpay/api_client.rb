require 'httparty'

module PaymentAdapterModule::Razorpay
	class ApiClient
		attr_reader :config, :credentials

		def initialize(config, credentials)
			binding.pry
			@config = config
			@credentials = credentials
		end

		def get(path)
			response = HTTParty.get(
				config['root_url'] + path,
				basic_auth: { username: credentials['api_key'], password: credentials['secret_key'] }
				)
			return response unless response.code >= 500

			raise BadGatewayError.new(gateway: 'razorpay', path: path, response_code: response.code, response_body: response.parsed_response)
		end

		def post(path, options)
			binding.pry
			response = HTTParty.post(
				config['root_url'] + path,
				body: options,
				basic_auth: { username: credentials['api_key'], password: credentials['secret_key'] }
				)
			return response unless response.code >= 500

			raise BadGatewayError.new(gateway: 'razorpay', path: path, response_code: response.code, response_body: response.parsed_response)
		end
	end
end