lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "employee_payment/version"

Gem::Specification.new do |spec|
  spec.name          = "employee_payment"
  spec.version       = EmployeePayment::VERSION
  spec.authors       = ["elibiz443"]
  spec.email         = ["elibiz443@gmail.com"]

  spec.summary       = %q{EmployeePayment is a payment template for employees.}
  spec.description   = %q{This is a payment template for employees. Creates basic payment structure.}
  spec.homepage      = "https://github.com/elibiz443/employee_payment"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elibiz443/employee_payment"
  spec.metadata["changelog_uri"] = "https://github.com/elibiz443/employee_payment/changelogs"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  
  spec.add_dependency "minitest", "~> 5.0"
end
