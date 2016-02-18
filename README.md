# Zippopotamus

[![Gem Version](http://img.shields.io/gem/v/zippopotamus.svg)](https://rubygems.org/gems/zippopotamus)
[![Build Status](https://img.shields.io/travis/rmm5t/zippopotamus.svg)](http://travis-ci.org/rmm5t/zippopotamus)
[![Gem Downloads](https://img.shields.io/gem/dt/zippopotamus.svg)](https://rubygems.org/gems/zippopotamus)

Ruby wrapper around the **[Zippopotam.us](http://zippopotam.us/)** API. **Zip Code Galore!** Postal Codes and Zip Codes made easy.

* Give it a postal code to get back the city, state, longitude, and latitude.
* Give it a city and state to get back a list of possible postal codes.

## DISCLAIMER: Not Ready Yet, But Some Day

I just started on this gem. It's not real yet. All
[Readme Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)
so far.

---

**How You Can Help**

[![Square Cash](http://img.shields.io/badge/square%20cash-$rmm5t-brightgreen.svg)][square]
[![PayPal](http://img.shields.io/badge/paypal-rmm5t-blue.svg)][paypal]
[![Book a Codementor session](http://img.shields.io/badge/codementor-book%20a%20session-orange.svg)][codementor]

If you like this project, [buy me a coffee][paypal], or [book a session with me][codementor], or donate bitcoin: `1rmm5tv6f997JK5bLcGbRCZyVjZUPkQ2m`

[square]: https://cash.me/$rmm5t/5 "Donate to rmm5t for open source!"
[paypal]: https://www.paypal.me/rmm5t/5 "Donate to rmm5t for open source!"
[bitcoin]: bitcoin:1rmm5tv6f997JK5bLcGbRCZyVjZUPkQ2m?amount=0.01&label=Coffee%20to%20rmm5t%20for%20Open%20Source "Buy rmm5t a coffee for open source!"
[codementor]: https://www.codementor.io/rmm5t?utm_campaign=profile&utm_source=button-rmm5t&utm_medium=shields "Book a session with rmm5t on Codementor!"

[![Twitter](https://img.shields.io/twitter/follow/rmm5t.svg?style=social)](https://twitter.com/rmm5t)
[![Stack Overflow](https://img.shields.io/stackexchange/stackoverflow/r/8985.svg?style=social)](http://stackoverflow.com/users/8985/ryan-mcgeary)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "zippopotamus"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zippopotamus

## Usage

```ruby
require "zippopotamus"

# ============================================================
# Lookup the city, state, long, and lat by postal code (defaults to "US").
#
places = Zippopotamus.by_postal_code("90210")
places.size                # => 1
place = places.first
place.country              # => "United States"
place.country_abbreviation # => "US"
place.state                # => "California"
place.state_abbreviation   # => "CA"
place.place_name           # => "Beverly Hills"
place.post_code            # => "90201"
place.longitude            # => "-118.4065"
place.latitude             # => "34.0901"

# Aliases also exist for code readability
place.name                 # => "Beverly Hills"
place.city                 # => "Beverly Hills"
place.postal_code          # => "90201"
place.zip                  # => "90201"

# Also aliased as `by_zip`
places = Zippopotamus.by_zip("90210")

# Specify a different country
places = Zippopotamus.by_postal_code("4400", "AU")
place = places.first
place.country              # => "Australia"
place.country_abbreviation # => "AU"
place.state                # => "Queensland"
place.state_abbreviation   # => "QLD"
place.place_name           # => "Kingsthorpe"
place.post_code            # => "4400"
place.longitude            # => "151.8333"
place.latitude             # => "-27.4667"

# ============================================================
# Lookup the postal code by city and state (defaults to "US").
#
places = Zippopotamus.by_name("Belmont", "MA", "US")
places.size                    # => 2
places[0].country              # => "United States"
places[0].country_abbreviation # => "US"
places[0].state                # => "Massachusetts"
places[0].state_abbreviation   # => "MA"
places[0].place_name           # => "Belmont"
places[0].post_code            # => "02178"
places[0].longitude            # => "-71.4594"
places[0].latitude             # => "34.0901"
# ---
places[1].post_code            # => "02478"
places[1].longitude            # => "-71.2044"
places[1].latitude             # => "42.4128"
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/zippopotamus/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
