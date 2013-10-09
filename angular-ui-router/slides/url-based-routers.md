##  URL Based Routers

Map a specific URL to a single handler.

```ruby
get '/tasks', to: 'tasks#index'
```

Works great for typical request/response scenarios, but...

<aside data-markdown class="notes">
  Simple state machine. Where each URL is a state.
  Provide an abstraction between a URL and a request your application can handle.
  One URL to one handler. 
  The handler is responsible for knowing all the pieces of the view to put together for that URL.
</aside>
