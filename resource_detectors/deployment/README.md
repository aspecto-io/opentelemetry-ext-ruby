# Opentelemetry::Resource::Detectors

The `opentelemetry-resource-detector-deployment` gem provides [Deployment](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/resource/semantic_conventions/deployment_environment.md) resource detectors for OpenTelemetry. Currently supporting `rails`, `sinatra` and `rack`.

## What is OpenTelemetry?

OpenTelemetry is an open source observability framework, providing a general-purpose API, SDK, and related tools required for the instrumentation of cloud-native software, frameworks, and libraries.

OpenTelemetry provides a single set of APIs, libraries, agents, and collector services to capture distributed traces and metrics from your application. You can analyze them using Prometheus, Jaeger, and other observability tools.

## How does this gem fit in?

The `opentelemetry-resource-detector-deployment` gem provides a means of retrieving a deployment resource for supported frameworks following the resource semantic conventions.

## How do I get started?

Install the gem using:

```
gem install opentelemetry-sdk
gem install opentelemetry-resource-detector-deployment
```

Or, if you use Bundler, include `opentelemetry-sdk` and `opentelemetry-resource-detector-deployment` in your `Gemfile`.

```rb
require 'opentelemetry/sdk'
require 'opentelemetry/resource/detector/deployment'

# For a specific platform
OpenTelemetry::SDK.configure do |c|
  c.resource = OpenTelemetry::Resource::Detector::Deployment.detect
  # you can add more resources here with extra assignment to c.resource
end
```

## How can I get involved?

Bug reports and pull requests are welcome on GitHub at https://github.com/aspecto-io/opentelemetry-ext-ruby.

## License

The `opentelemetry-resource-detector-deployment` gem is distributed under the Apache 2.0 license. See LICENSE for more information.
