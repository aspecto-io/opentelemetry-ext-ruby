# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'opentelemetry/resource/detector/deployment'
require 'opentelemetry/common/test_helpers'

require 'minitest/autorun'
require 'rspec/mocks/minitest_integration'
