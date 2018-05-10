
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "happy_birthday/version"

Gem::Specification.new do |spec|
  spec.name          = "happy_birthday"
  spec.version       = HappyBirthday::VERSION
  spec.authors       = ["takanamito"]
  spec.email         = ["takanamito0928@gmail.com"]

  spec.summary       = %q{A ruby gem that provide convenient function for birthday and age,}
  spec.description   = %q{A ruby gem that provide convenient function for birthday and age,}
  spec.homepage      = "https://github.com/takanamito/happy_birthday"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "yard"
end
