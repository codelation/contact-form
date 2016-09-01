$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contact_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contact-form"
  s.version     = ContactForm::VERSION
  s.authors     = ["Jake Humphrey"]
  s.email       = ["jake@codelation.com"]
  s.homepage    = "https://github.com/codelation/contact-form"
  s.summary     = "Simple contact form for Rails apps."
  s.description = "Contact form is an easy way to add a contact form to your Rails app."
  s.licenses    = ["MIT"]

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "codelation_assets", "~> 0.3"
  s.add_dependency "rails", "~> 4.0"
  s.add_development_dependency "rake"
end
