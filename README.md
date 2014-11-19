railq
=====

Generate a queue for a rails model.

If you have a model Dog, create a DogQueue model like this:

```bash
bin/rails g rail_q:queue Dog
bin/rake db:migrate
```

Now you can push and pop Dogs from your queue like so:
```ruby
rover = Dog.create!
DogQueue.push(rover)
rover = DogQueue.pop
```
