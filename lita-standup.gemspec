Gem::Specification.new do |spec|
  spec.name          = "lita-standup"
  spec.version       = "0.1.0"
  spec.authors       = ["Sybil Deboin"]
  spec.email         = ["sybil.deboin@gmail.com"]
  spec.description   = "Standup feature for slack"
  spec.summary       = ""
  spec.homepage      = "TODO: Add a homepage"
  spec.license       = "GNU v3.0"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"
  spec.add_runtime_dependency "lita-slack"
  spec.add_runtime_dependency "slack-ruby-client"
  spec.add_runtime_dependency "redis-objects"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr" 
end