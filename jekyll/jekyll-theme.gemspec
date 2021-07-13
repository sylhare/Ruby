# coding: utf-8

Gem::Specification.new do |spec|
  spec.name = "jekyll-theme"
  spec.version = "0.1.0"
  spec.authors = ["Sylhare"]
  spec.email = ["sylhare@outlook.com"]

  spec.summary = %q{Jekyll Theme.}
  spec.homepage = "https://sylhare.github.io/jekyll-theme"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select {|f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i)}

  spec.add_runtime_dependency "jekyll", ">= 3.6", "< 5.0"
  spec.add_runtime_dependency 'type-on-strap', '~> 2.3', '>= 2.3.7'
end
