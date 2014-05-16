$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_contacts"
  s.version     = ActiveContacts::VERSION
  s.authors     = ["Kernel team"]
  s.email       = ["mk@kernel-corp.com"]
  s.homepage    = "http://www.kerweb.ru"
  s.summary     = "Simply create contacts model and register it in Active Admin"
  s.description = s.summary

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", '<4.0.0'
  s.add_dependency "activeadmin", '~> 0.6.3'
end
