# UserShell

UserShell is a tiny gem that uses the canonical approach to detect the shell for the current user, or a specified user.
The techniques are ugly so it seemed like it would be worth hiding them behind a gem.

## Installation

Add this line to your application's Gemfile:

    gem 'usershell'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install usershell

## Usage

```ruby
  UserShell.path => "/bin/zsh"
  UserShell.path('john') => "/usr/local/bin/fish"
```

Attempting to get the shell path for a user that doesn't exist will raise an ArgumentError.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
