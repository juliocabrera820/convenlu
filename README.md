[![Gem Version](https://badge.fury.io/rb/convenlu.svg)](https://badge.fury.io/rb/convenlu)

Commit message will be formatted based on defined stantards

## Installation

### rubygems

Add this line to your application's Gemfile:

```ruby
gem 'convenlu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install convenlu

### github packages

Add this line to your application's Gemfile:

```ruby
source "https://rubygems.pkg.github.com/juliocabrera820" do
  gem "convenlu", "0.4.2"
end
```

Or install it yourself as:

    $ gem install convenlu --version "0.4.0" --source "https://rubygems.pkg.github.com/juliocabrera820"

## Usage

* Add your files to the staging area by using `git add <FILE>`
*    $ convenlu

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/juliocabrera820/convenlu

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
