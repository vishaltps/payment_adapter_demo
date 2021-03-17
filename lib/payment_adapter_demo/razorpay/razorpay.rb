module PaymentAdapterDemo
  class Razorpay
    attr_accessor :api_key, :secret_key

    def initialize(**)
      @api_key = api_key
      @secret_key = secret_key
    end

    def print_hello_world
      return 'Hello World !!'
    end
  end
end