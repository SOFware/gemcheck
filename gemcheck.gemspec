# frozen_string_literal: true

require_relative "lib/gemcheck/version"

Gem::Specification.new do |spec|
  spec.name = "gemcheck"
  spec.version = Gemcheck::VERSION
  spec.authors = ["Jim Gay"]
  spec.email = ["jim.gay@sofwarellc.com"]

  spec.summary = "Dump bundler outdated info into a CSV"
  spec.description = "Use bundle outdated results as CSV"
  spec.homepage = "https://github.com/SOFware/gemcheck"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SOFware/gemcheck"
  spec.metadata["changelog_uri"] = "https://github.com/SOFware/gemcheck/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "zeitwerk", "~> 2.6"
  spec.add_dependency "bundler"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
