if ENV['MEASURE_COVERAGE'] == 'true'
  require 'simplecov'
  require 'simplecov-console'

  SimpleCov.start do
    formatter SimpleCov::Formatter::MultiFormatter.new([
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::Console,
    ])
    minimum_coverage 100
  end
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rack/vcr'
