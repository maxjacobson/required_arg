# required_arg

Ruby keyword arguments are awesome:

```ruby
class AwesomeValidator
  def is_awesome?(suspect:)
    suspect == "keyword arguments"
  end
end

AwesomeValidator.new.is_awesome?(suspect: "keyword arguments") #=> true!
```

That's great code. It even uses the sweet feature introduced in Ruby 2.1 where
keyword arguments can be required, so if you called that method without
providing the keyword, this exception would be raised:

```text
missing keyword: suspect (ArgumentError)
```

Designing method interfaces is easier when you can require keywords.

Ruby 2.0.0 is in kind of an awkward position, where it has keywords, but it
can't require them. If you try that code above, you get this gnarly syntax
error:

```text
awesome.rb:6: syntax error, unexpected ')'
  def is_awesome?(suspect:)                             ...
                           ^
awesome.rb:9: syntax error, unexpected keyword_end, expecting end-of-input
end                             ...
   ^
```

So let's say you're using Ruby 2.0.0, using keyword arguments, and wish you
could require them... this gem is for you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'required_arg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install required_arg

## Usage

```ruby
require "required_arg"

class AwesomeValidator
  def is_awesome?(suspect: RequiredArg.new(:suspect))
    suspect == "keyword arguments"
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake rspec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/maxjacobson/required_arg. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

