USING
-----

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
