The TVDB.com Ruby Gem
=====================

This gem allows you to do simple queries on thetvdb.com database for your ruby/rails project.

Let me know if you find any bugs or need more methods!

This is my first gem, be nice :D

[TVDB_Ruby on rubygems.org](https://rubygems.org/gems/tvdb_ruby/)

Documentation
-------------
### First install the gem
```ruby
gem install tvdb_ruby
```
or if in rails put in Gemfile
```ruby
gem 'tvdb_ruby'
bundle install
```

### Methods
Search series on the database with keywords
```ruby
TVDB_Ruby.search_series(search)
```

Get a serie from its id
```ruby
TVDB_Ruby.search_by_id(id)
```

Get a serie from its IMBD ID
```ruby
TVDB_Ruby.search_imdb(imdb_id)
```

Get an episode from its air date
```ruby
TVDB_Ruby.search_by_airdate(series_id, date)
```

Todo
----
+ More methods
+ Better usability/flexibility
+ Add user's API key (tvdb_ruby's API atm)
+ Write tests