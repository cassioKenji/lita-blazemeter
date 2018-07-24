require 'version.rb'

Gem::Specification.new do |spec|
  spec.name          = "lita-blazemeter"
  spec.version       = LitaBlazemeter::VERSION
  spec.authors       = ["Cassio Kenji Oshiro Batista"]
  spec.email         = ["chaoscifer@gmail.com"]
  spec.description   = "Lita handler for Blazemeter APIs"
  spec.summary       = "Lita handler for Blazemeter APIs"
  spec.homepage      = "https://github.com/cassioKenji/lita-blazemeter"
  spec.licenses      = ["MIT"]
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  s.required_ruby_version     = '>= 2.4.0'

  s.add_dependency 'httparty', ">= 0.16.2"

  # s.post_install_message = "post install message here"

  spec.add_runtime_dependency "lita", ">= 4.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
