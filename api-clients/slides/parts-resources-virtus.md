##  Resources :: Virtus

* Attribute DSL
* Constructor
* Mass-assignment
* Coercion
* Overriding getters / setters
* And more...

```ruby
class Person
  include Virtus.model

  attribute :name, String
  attribute :age, Integer
  attribute :birthday, DateTime
end

person = Person.new(:name => 'Piotr', :age => 31)
person.attributes # => { :name => "Piotr", :age => 31 }

# mass-assignment
person.attributes = { :name => 'Jane', :age => 21 }
person.name # => "Jane"
person.age  # => 21
```

note:
    Put your speaker notes here.
    You can see them pressing 's'.
