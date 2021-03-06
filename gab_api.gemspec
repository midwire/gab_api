# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gab_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'gab_api'
  spec.version       = GabApi::VERSION
  spec.authors       = ['Christopher Michael']
  spec.email         = ['87a1779b@opayq.com']

  spec.summary       = 'Ruby client for the Gab API'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/midwire/gab_api'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'dotenv', '~> 2.5'
  spec.add_development_dependency 'pry-nav', '~> 0.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4.0'
  spec.add_development_dependency 'webmock', '~> 3.4'

  spec.add_dependency 'faraday', '~> 0.15'
  spec.add_dependency 'multi_json', '~> 1.13'
end
