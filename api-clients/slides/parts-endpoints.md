##  Endpoints

* Use the configured client instance
* Construct URL and format requests
* Allow users to customize requests
* Convert raw responses to Resource objects

```ruby
project.stories(with_state: :unscheduled)
```

```ruby
Endpoints::Stories.new(client).get(project_id, params)
```

```ruby
module Endpoints
  class Stories
    attr_accessor :client

    def initialize(client)
      @client = client
    end

    def get(project_id, params={})
      data = client.paginate("/projects/#{project_id}/stories", params: params)
      raise Errors::UnexpectedData, 'Array of stories expected' unless data.is_a? Array

      data.map do |story|
        Resources::Story.new({ client: client, project_id: project_id }.merge(story))
      end
    end
  end
end

```

note:
    Put your speaker notes here.
    You can see them pressing 's'.
