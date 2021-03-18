module PaymentAdapterDemo::Razorpay
  class Razorpay
    attr_accessor :api_key, :secret_key

    def initialize(**)
      @api_key = api_key
      @secret_key = secret_key
    end

    def print_hello_world
      return "Hello World !! #{api_key} and #{secret_key}"
    end


  end
end