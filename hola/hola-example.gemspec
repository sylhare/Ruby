Gem::Specification.new do |s|
  s.name        = 'hola-example'
  s.version     = '0.0.1'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Nick Quaranto", "sylhare"]
  s.email       = 'sylhare@outlook.com'
  s.files       = ["lib/hola.rb", "lib/hola/translator.rb"]
  s.homepage    = 'https://rubygems.org/gems/hola'
  s.license     = 'MIT'
  s.executables << 'hola'
end
