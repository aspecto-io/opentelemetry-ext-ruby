# frozen_string_literal: true

# based on the work here: https://github.com/open-telemetry/opentelemetry-ruby/blob/main/Rakefile

task :bundle_install do
  foreach_gem('bundle install')
end

task :test do
  foreach_gem('bundle exec rake test')
end

task :rubocop do
  foreach_gem('bundle exec rake rubocop')
end

def foreach_gem(cmd)
  Dir.glob('**/opentelemetry-*.gemspec') do |gemspec|
    name = File.basename(gemspec, '.gemspec')
    dir = File.dirname(gemspec)
    Dir.chdir(dir) do
      if defined?(Bundler)
        Bundler.with_unbundled_env do
          sh(cmd)
        end
      else
        sh(cmd)
      end
    end
  end
end
