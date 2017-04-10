# BonitaBPM Ruby API Client

Unofficial API client for [Bonita API](https://effilab.atlassian.net/wiki/display/IT/Product+Launch+-+Overview)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bonita'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bonita

## Usage

Bonita API requires you to login to the portal URL, then logout when you're done.

There is two way to handle this authentication logic.

### With a block

```ruby
Bonita::Client.start(username: "YOUR_USERNAME", password: "YOUR_PASSWORD", url: "YOUR_BONITA_SERVER_URL") do |client|
  # Perform your request while authenticated using the client object
end # Logout seamlessly when closing the block_given
```

### With an instance
```ruby
client = Bonita::Client.new(username: "YOUR_USERNAME", password: "YOUR_PASSWORD", url: "YOUR_BONITA_SERVER_URL")
client.login
# perform request
client.logout
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Pierre Deville/bonita. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).