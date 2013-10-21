# Shuffle

You're at a hackathon. You're using a rate limited API. But what's that, you've managed to get hold of multiple API keys?

Shuffle lets you cycle through your available keys when you make API calls.

It's also a simple way to cycle through objects in _any_ array.

## Usage

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
# string1
```

### Example with API keys

Instead of passing a single API key to your REST client, pass it a Shuffle of API keys.

```ruby

require 'shuffle'
require 'rest_client'

@api_key = Shuffle.new ['key1', 'key2', 'key3']

def call_api
    RestClient.get('http://my.api.com/some/resource/?api_key=' + @api_key)
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

### It's not just strings

Any method you call on a Shuffle will be passed on to the next item in the list. This means you're not just limited to strings. You can use a Shuffle to cycle through any set of objects.

```ruby
require 'shuffle'

number = Shuffle.new [1, 5, 10]

puts number + 1
# 2
puts number + 1
# 6
puts number + 1
# 11
puts number + 1
# 2
```

## Installation

Add this line to your application's Gemfile:

```
gem 'shuffle', :git => 'git://github.com/robinjmurphy/shuffle.git'
```

And then execute:

```
bundle
```
