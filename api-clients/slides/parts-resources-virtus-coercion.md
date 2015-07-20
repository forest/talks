##  Resources :: Virtus :: Coercion

Coercion for built-in types.

```ruby
user.age = '31' # => 31
user.age.class # => Fixnum

user.birthday = 'November 18th, 1983' # => #<DateTime: 1983-11-18T00:00:00+00:00 (4891313/2,0/1,2299161)>
```

Coercion for objects.

```ruby
class Club
  include Virtus.model

  attribute :name, String
  attribute :captain, Person
end

club = Club.new(:name => 'LA Galaxy', :captain => {:name => 'Robbie Keane', :age => 35})
club.captain # =>
    # {
    #        :age => 35,
    #   :birthday => nil,
    #       :name => "Robbie Keane"
    # }
club.captain.class # => Person < Object
```

Coercion for collections.

```ruby
class Club
  # ...

  attribute :players, Set[Person]
end

club.players = [{:name => 'Robbie Keane'}, {:name => 'Steven Gerrard'}, {:name => 'Robbie Rogers'}]
```


note:
    Put your speaker notes here.
    You can see them pressing 's'.
