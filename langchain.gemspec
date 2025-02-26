# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name = "langchainrb"
  spec.version = Langchain::VERSION
  spec.authors = ["Andrei Bondarev"]
  spec.email = ["andrei.bondarev13@gmail.com"]

  spec.summary = "Build ML/AI-powered applications with Ruby's LangChain"
  spec.description = "Build ML/AI-powered applications with Ruby's LangChain"
  spec.homepage = "https://rubygems.org/gems/langchainrb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andreibondarev/langchainrb"
  spec.metadata["changelog_uri"] = "https://github.com/andreibondarev/langchainrb/CHANGELOG.md"

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

  spec.add_development_dependency "pry-byebug", "~> 3.10.0"
  spec.add_development_dependency "dotenv-rails", "~> 2.7.6"

  spec.add_dependency "cohere-ruby", "~> 0.9.1"
  spec.add_dependency "milvus", "~> 0.9.0"
  spec.add_dependency "pinecone", "~> 0.1.6"
  spec.add_dependency "ruby-openai", "~> 4.0.0"
  spec.add_dependency "qdrant-ruby", "~> 0.9.0"
  spec.add_dependency "weaviate-ruby", "~> 0.8.0"
end
