##  Client :: Pagination

Pagination details can be a pain to deal with.

```
X-Tracker-Pagination-Limit
X-Tracker-Pagination-Offset
X-Tracker-Pagination-Total
X-Tracker-Pagination-Returned
```

<br/>

Make it easy.

```ruby
all_stories = project.stories(offset: 0, limit: 250, auto_paginate: true)
```

<br/>

Optionally yield pages to a block.

```ruby
project.stories(offset: 0, limit: 250) do |stories|
    stories.each { |story| puts story.name }
end
```

note:
    Put your speaker notes here.
    You can see them pressing 's'.
