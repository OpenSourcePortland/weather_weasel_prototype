# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weather_weasel/version'

Gem::Specification.new do |spec|
  spec.name          = "weather_weasel"
  spec.version       = WeatherWeasel::VERSION
  spec.authors       = ["Elizabeth Tabler, Duncan Miller, Michael LaPeter"]
  spec.email         = ["opensourceportland@gmail.com"]
  spec.description   = %q{Wunderground Weather Gem}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"
  
  spec.add_dependency 'httparty', ">= 0.10.2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
