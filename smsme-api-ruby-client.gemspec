# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smsme/version'

Gem::Specification.new do |spec|
  spec.name          = 'smsme'
  spec.version       = SMSme::VERSION
  spec.authors       = ['Dimitris Krestos']
  spec.email         = ['dkrestos@gmail.com']

  spec.summary       = 'SMSme API ruby client'
  spec.description   = 'A Ruby API library for the SMSme platform.'
  spec.homepage      = 'https://github.com/vdw/smsme-api-ruby-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'httpclient', '~> 2.7'
end
