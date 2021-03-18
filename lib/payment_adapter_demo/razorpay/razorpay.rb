module PaymentAdapterDemo
  class Razorpay
    attr_accessor :api_key, :secret_key

    def initialize(**args)
      puts "args #{args}"
      @api_key = args[:api_key]
      @secret_key = args[:secret_key]
      puts "api_key  = #{args[:api_key]}"
      puts "secret_key  = #{args[:secret_key]}"
    end

    def print_hello_world
      return "Hello World !! #{@api_key} and #{@secret_key}"
    end
  end
end