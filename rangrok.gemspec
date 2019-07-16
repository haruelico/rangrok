$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rangrok/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rangrok"
  spec.version     = Rangrok::VERSION
  spec.authors     = ["Lico Harue"]
  spec.email       = ["lico@lico.codes"]
  spec.homepage    = "https://github.com/haruelico/rangrok"
  spec.summary     = "Add '.ngrok.io' to Rails.application.config.hosts in development environment."
  spec.description = "Add '.ngrok.io' to Rails.application.config.hosts in development environment."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0.rc1"

  spec.add_development_dependency "sqlite3"
end
