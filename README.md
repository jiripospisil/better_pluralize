# BetterPluralize

Adds block support to the Rails' pluralize view helper so you can customize its
output.

## Installation

Add this line to your application's Gemfile:

    gem "better_pluralize"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install better_pluralize

## Usage

```erb
<%= pluralize @parts.size, "part" do |count, word| %>
  <strong><%= count %></strong> <%= word %> found!
<% end %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
