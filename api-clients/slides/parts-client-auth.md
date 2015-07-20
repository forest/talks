##  Client :: Authentication

```ruby
Client.new(token: 'my-super-special-token')
Client.new(oauth: { consumer_key: 'xxx', consumer_secret: 'yyy' })
```

<br/>

>_*Don't do this.*_
```ruby
Client.token = 'my-super-special-token'
Client.get_me_data
```
It's not thread-safe.


note:
    Put your speaker notes here.
    You can see them pressing 's'.
