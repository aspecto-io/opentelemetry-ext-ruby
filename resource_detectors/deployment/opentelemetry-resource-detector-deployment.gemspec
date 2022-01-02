# frozen_string_literal: true

require_relative 'lib/opentelemetry/resource/detector/deployment/version'

Gem::Specification.new do |spec|
  spec.name          = 'opentelemetry-resource-detector-deployment'
  spec.version       = OpenTelemetry::Resource::Detector::Deployment::VERSION
  spec.authors       = ['Aspecto Authors']
  spec.email         = ['amir@aspecto.io']

  spec.summary       = 'OpenTelemetry Resource Detector for Deployment'
  spec.description   = 'Automatic detect deplyment environment for common ruby framewraks, and add it to the resource'
  spec.homepage      = 'https://github.com/aspecto-io/opentelemetry-ext-ruby'
  spec.required_ruby_version = '>= 2.5.0'

  spec.files = ::Dir.glob('lib/**/*.rb') +
               ::Dir.glob('*.md') +
               ['LICENSE', '.yardopts']
  spec.require_paths = ['lib']

  spec.add_dependency 'opentelemetry-sdk', '~> 1.0'
  spec.add_dependency 'opentelemetry-semantic_conventions', '~> 1.0'

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec-mocks'
  spec.add_development_dependency 'rubocop', '~> 0.73.0'

  if spec.respond_to?(:metadata)
    spec.metadata['source_code_uri'] = 'https://github.com/aspecto-io/opentelemetry-ext-ruby/tree/main/resource_detectors/deplyment'
    spec.metadata['bug_tracker_uri'] = 'https://github.com/aspecto-io/opentelemetry-ext-ruby/issues'
  end
end
