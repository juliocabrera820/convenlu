source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in convenlu.gemspec
gemspec

gem "rake", "~> 13.0"

group :development do
  gem "rubocop-shopify", require: false
  gem "rubocop", "~> 1.21", require: false
end

gem "git", "~> 1.19.1"
gem "tty-prompt", "~> 0.23.1"
gem "tty-spinner", "~> 0.9.3"
