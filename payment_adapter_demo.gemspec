# frozen_string_literal: true

require_relative "lib/payment_adapter_demo/version"

Gem::Specification.new do |spec|
  spec.name          = "payment_adapter_demo"
  spec.version       = PaymentAdapterDemo::VERSION
  spec.authors       = ["="]
  spec.email         = ["="]

  spec.summary       = "This is just spike for payment adapter"
  spec.description   = "This is just spike for payment adapter"
  spec.homepage      = "https://www.quintype.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://www.quintype.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.quintype.com"
  spec.metadata["changelog_uri"] = "https://www.quintype.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 1.11'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'pry'


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
