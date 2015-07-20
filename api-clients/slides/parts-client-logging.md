##  Client :: Logging

Configurable logger.
<br/><br/>

Use Syslog.
```ruby
sys_logger = Syslog::Logger.new

Client.new(logger: sys_logger)
```

<br/>

Provide a built-in logger with debug tracing.
```ruby
debug_logger = TrackerApi::Logger.new(STDOUT)
debug_logger.level = Logger::DEBUG


Client.new(logger: debug_logger)
```

```
I, [2015-07-07T15:46:09.045167 #76749]  INFO -- : get => https://www.pivotaltracker.com/services/v5/projects/1027488
D, [2015-07-07T15:46:09.045217 #76749] DEBUG -- request: User-Agent: "Ruby/2.1.5 (x86_64-darwin14.0; ruby) TrackerApi/0.2.10 Faraday/0.9.1"
X-TrackerToken: "xxxxxxxxxxxxxxx"
D, [2015-07-07T15:46:09.045235 #76749] DEBUG -- request.body: nil
I, [2015-07-07T15:46:09.046512 #76749]  INFO -- : 200 <= https://www.pivotaltracker.com/services/v5/projects/1027488
D, [2015-07-07T15:46:09.046594 #76749] DEBUG -- response: Content-Type: "application/json; charset=utf-8"
Status: "200 OK"
X-Tracker-Project-Version: "63"
...
```


note:
    Put your speaker notes here.
    You can see them pressing 's'.
