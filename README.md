# Zwemwater
[![Build Status](https://travis-ci.org/richardvenneman/zwemwater.png?branch=master)](https://travis-ci.org/richardvenneman/zwemwater)
[![Coverage Status](https://coveralls.io/repos/richardvenneman/zwemwater/badge.png?branch=master)](https://coveralls.io/r/richardvenneman/zwemwater?branch=master)
[![Gem Version](https://badge.fury.io/rb/zwemwater.png)](http://badge.fury.io/rb/zwemwater)


Zwemwater provides a simple API to get the latest known status from recognized Dutch swimming spots. It pulls data from the [Dutch zwemwater.nl website](http://zwemwater.nl).

## Usage

You can use zwemwater out of the box.

```ruby
require 'zwemwater'

zwemwater = Zwemwater.new('Lytse Wielen')
puts zwemwater.status     # { "code" => :goed }
```

When a swimming spot has an error code other than _:goed_, the date of measurement is also provided.

```ruby
zwemwater = Zwemwater.new('Blauwe Meer Dinxperlo')
puts zwemwater.status     # { "code" => :negatief_zwemadvies, "date" => #<Date: 2013-07-05> }
```

The zwemwater.nl website provides more information on swimming spots than just the status. This data is also fetched and can be accessed trough the `#data` method of a zwemwater instance.

```ruby
zwemwater = Zwemwater.new('Lytse Wielen')
puts zwemwater.data     # { "properties" => { "objectType" => "zwemplek", "id" => 1686, "status" => { "code" => "goed" }, "boundingBox" => { "minx" => 187255.29648096, "miny" => 580892.53598798, "maxx" => 187426.65648096, "maxy" => 580965.19598798}, "naam" => "Lytse Wielen", "zwemwaterlocatieId" => 965}, "geometry" => { "type" => "Point", "coordinates" => [187340.3393170484, 580935.4267625385]}, "type" => "Feature" }
```

### Listing possible queries

A list of all possible queries (locations) can be accessed trough `Zwemwater::Response#locations` after instantiation or after a manual fetch of statuses.

```ruby
Zwemwater::Service.get_statuses
puts Zwemwater::Response.locations     # ["Aakvlaai, Badstrand", "Abbertstrand", "Agnietenplas Oost", ..]
````

## TODO

* Better handling of raw zwemwater.nl data

## Supported Ruby Versions

Zwemwater is tested under 1.9.2, 1.9.3, 2.0.0, JRuby 1.7.2 (1.9 mode), and Rubinius 2.0.0 (1.9 mode).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
