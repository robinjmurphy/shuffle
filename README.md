# Shuffle

You're at a hackathon. You're using a rate limited API. But what's that, you've managed to get hold of multiple API keys?

Shuffle will let you cycle through your available keys when you make API calls. It's also just a simple way to cycle through the entires in _any_ array.

## What it does

```ruby
require 'shuffle'

my_string = Shuffle.new ['string1', 'string2', 'string3']

puts my_string
# string1
puts my_string
# string2
puts my_string
# string3
puts my_string
# string4
```

## API key usage

Instead of passing a single API key directly to your REST client, pass it your Shuffle.

```ruby

require 'shuffle'
require 'rest_client'

api_key = Shuffle.new ['key1', 'key2', 'key3']

def call_api
    RestClient.get('http://my.api.com/some/resource/?api_key=' + api_key)
end

call_api
# Calls http://my.api.com/some/resource/?api_key=key1
call_api
# Calls http://my.api.com/some/resource/?api_key=key2
call_api
# Calls http://my.api.com/some/resource/?api_key=key3
call_api
# Calls http://my.api.com/some/resource/?api_key=key1
```

## Installation

Add this line to your application's Gemfile:

    gem 'shuffle'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shuffle
