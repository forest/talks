##  Client :: Error Handling

Normalize exceptions to a defined set for users to handle.

```ruby
    def request(method, options = {})
      # made request with Faraday connection
    rescue Faraday::Error::ClientError => e
      raise TrackerApi::Error.new(e)
    end
```

Always wrap the original exception in case it is needed.

note:
    Put your speaker notes here.
    You can see them pressing 's'.
