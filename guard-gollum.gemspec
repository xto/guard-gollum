# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "guard-gollum"
  s.version     = "0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Xavier Tô']
  s.email       = ['xavier.to.01@gmail.com']
  s.homepage    = 'https://github.com/xto/guard-gollum'
  s.summary     = 'Guard gem for gollum'
  s.description = "Guard::Gollum automatically boots and kills Gollum"

  s.rubyforge_project = s.name

  s.add_dependency 'guard'
  s.add_dependency 'gollum'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rr'

  s.files = Dir.glob('{lib}/**/*') + %w[LICENSE README.textile]
  s.require_path = 'lib'
end
