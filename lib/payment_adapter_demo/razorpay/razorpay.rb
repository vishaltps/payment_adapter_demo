module PaymentAdapterDemo
  class Razorpay
    attr_accessor :api_key, :secret_key

    def initialize(**args)
      @api_key = args[:api_key]
      @secret_key = args[:secret_key]
    end

    def print_hello_world
      return "Hello World new !! #{api_key} and #{secret_key}"
    end

    def preview(*)
      puts "Its preview method"
      return "abcd"
    end
  end
end