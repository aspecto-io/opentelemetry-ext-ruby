# frozen_string_literal: true

task :bundle_install do
    Dir.chdir('resource_detectors/deployment') do
        sh('bundler install')
      end
    end

task :test do
  Dir.chdir('resource_detectors/deployment') do
    sh('bundler exec rake test')
  end
end

task :rubocop do
    Dir.chdir('resource_detectors/deployment') do
        sh('bundler exec rake rubocop')
    end
end
