# brainblocks-rails

Simplifies use of Brainblocks in Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brainblocks-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install brainblocks-rails

Include it in your application.js as:

```
//= require brainblocks
```

## Usage

```
brainblocks(wallet, amount, currency, on_success)
```

`on_success` Takes javascript. In the future I hope to support Rails actions.

`amount` Is in Rai; 1000 Rai = 0.001 XRB (or 1 Mxrb)

Example:
```
brainblocks("xrb_1rube3u6iyshxpe5g737zkqnmk7jq4whoi76dw1zip5wcy4y4rm84jw3bs79", 1000, "rai", "console.log('Payment successful!', data.token);")
```

https://brainblocks.io/
