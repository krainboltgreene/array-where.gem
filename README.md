array-where
-----------

  - [![Version](https://badge.fury.io/rb/array-where.png)](https://rubygems.org/gems/array-where)
  - [![Climate](https://codeclimate.com/github/krainboltgreene/array-where.png)](https://codeclimate.com/github/krainboltgreene/array-where)
  - [![Build](http://img.shields.io/travis-ci/krainboltgreene/array-where.png)](https://travis-ci.org/krainboltgreene/array-where)
  - [![Dependencies](https://gemnasium.com/krainboltgreene/array-where.png)](https://gemnasium.com/krainboltgreene/array-where)
  - [![License](http://img.shields.io/license/MIT.png?color=green)](http://opensource.org/licenses/MIT)

Query your arrays for matches.


Using
=====

``` ruby
require "ostruct"
require "array/where"

eve = OpenStruct.new(name: "Eve", age: 21)
john = OpenStruct.new(name: "John", age: 21)
james = OpenStruct.new(name: "James", age: 22)

friends = [eve, john, james]
friends.where(age: 21) #=> [eve, john]
friends.where(name: "John", age: 21) #=> [john]
friends.where(age: 0) #=> []

friends.wherein(name: ->(name) { name.include?("J") }) #=> [john, james]
```


Installing
==========

Add this line to your application's Gemfile:

    gem "array-where", "~> 1.0"

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install array-where


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Licensing
=========

Copyright (c) 2013 Kurtis Rainbolt-Greene

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
