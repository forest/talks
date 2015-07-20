##  Resources :: Virtus :: Overrides

Override a Virtus defined getter or setter to add custom behavior.

```ruby
# Get tasks for story on demand if they were not already loaded with the story.
def tasks(params = {})
  if @tasks && @tasks.any?
    @tasks
  else
    @tasks = Endpoints::Tasks.new(client).get(project_id, id, params)
  end
end

# Set the client instance on the new Project after it is created by Virtus.
def project=(data)
  super(data).client = client
end
```

note:
    Put your speaker notes here.
    You can see them pressing 's'.
