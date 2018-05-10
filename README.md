# HappyBirthday

[![Build Status](https://travis-ci.com/takanamito/happy_birthday.png)](https://travis-ci.com/takanamito/happy_birthday)

A library to calculate age from birthday.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'happy_birthday'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install happy_birthday

## Usage

You can use this gem by calling `HappyBirthday.born_on` method:

```ruby
require 'happy_birthday'

birthday = HappyBirthday.born_on('2000-01-01')
```

Calculate current age:

```ruby
birthday = HappyBirthday.born_on('2000-01-01')
birthday.age.years_old
# => 18
```

Calculate 10 years after age:

```ruby
birthday = HappyBirthday.born_on('2000-01-01')
birthday.age.years_after(10).years_old
# => 28

# You can use years_before method also.
birthday.age.years_before(10).years_old
# => 8
```

Calculate age on specific date:

```ruby
birthday = HappyBirthday.born_on('2000-01-01')
birthday.age.at('2020-01-01').years_old
# => 20

# if date is before birthday, return nil
birthday = HappyBirthday.born_on('2000-01-01')
birthday.age.at('1999-12-31').years_old
# => nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takanamito/happy_birthday. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HappyBirthday project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/takanamito/happy_birthday/blob/master/CODE_OF_CONDUCT.md).
