##  Resources :: Virtus :: More

Default values.

```ruby
attribute :published, Boolean, :default => false

attribute :slug, String, :default => lambda { |page, attribute| page.title.downcase.gsub(' ', '-') }
```

Private attributes.

```ruby
attribute :unique_id, String, :writer => :private
```

Custom coercions.

```ruby
class NoisyString < Virtus::Attribute
  def coerce(value)
    value.to_s.upcase
  end
end
```

Value Objects support equality.

```ruby
class GeoLocation
  include Virtus.value_object

  values do
    attribute :latitude,  Float
    attribute :longitude, Float
  end
end
```

note:
    Put your speaker notes here.
    You can see them pressing 's'.
