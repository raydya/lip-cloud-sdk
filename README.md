# Ltp::Cloud::Sdk 语言云非官方ruby SDK

[语言云](https://www.ltp-cloud.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ltp-cloud-sdk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ltp-cloud-sdk

## Usage

`rails`:

create `ltp_cloud_sdk` file in the `initializers` directory:

```ruby
Ltp::Cloud::Sdk.configure do |config|
  config.api_key = 'Your Key Here'
end
```

```ruby
Ltp::Cloud::Sdk.client.analysis('南京市长江大桥能不能长一点')
// ["南京市", "长江", "大桥", "能", "不", "能", "长", "一点"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ltp-cloud-sdk. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ltp::Cloud::Sdk project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ltp-cloud-sdk/blob/master/CODE_OF_CONDUCT.md).
