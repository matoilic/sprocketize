$:.unshift File.expand_path("../lib", __FILE__)
require "sprocketize/version"

Gem::Specification.new do |s|
  s.name = "sprocketize"
  s.version = Sprocketize::VERSION
  s.summary = "Command-line utility for the Sprockets gem"
  s.description = "Sprocketize provides a command-line utility for the sprockets gem so it can be used without rails."

  s.files = Dir["README.md", "LICENSE", "lib/**/*.rb", "bin/*"]
  s.executables = ["sprocketize"]

  s.add_dependency "sprockets", ">= 2.1.2"

  s.add_development_dependency "rake"
  s.add_development_dependency "closure-compiler"

  s.authors = ["Mato Ilic"]
  s.email = ["info@matoilic.ch"]
  s.homepage = "http://github.com/matoilic/sprocketize"
end
