Run resque workers
```ruby
QUEUE=* VERBOSE=1 bundle exec rake resque:work
```
Run rails app server(resque-web will automatly start at 0.0.0.0:3000/resque)
```ruby
rails s
```
