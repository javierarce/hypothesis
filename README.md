Unofficial ruby gem for the [hypothesis](https://hypothes.is) API.

### Installation

```gem install hypothesis```

### Usage

You'll need to generate an API token on your [Hypothesis developer page](https://hypothes.is/account/developer).

```ruby
require 'rubygems'
require 'hypothesis'

hypothesis = Hypothesis::API.new('YOUR_HYPOTHESIS_API_KEY')
puts hypothesis.search({ user: 'USERNAME', limit: 10 })

```

That will output an object with the found items. 

Here's how you to print the title, URL, text and highlighted content:

```ruby
hypothesis = Hypothesis::API.new('YOUR_HYPOTHESIS_API_KEY')
results = hypothesis.search(user: 'USERNAME', limit: 10)

results.rows.each do |row|
  puts row.document.title
  puts row.uri
  puts row.text unless row.text.nil?

  row.target.each do |target|
    puts target.selector[target.selector.length - 1].exact unless target.selector.nil?
  end

  puts "\n"
end
```

Currently this gem only supports the `root`, `search`, and `read` endpoints.

### API reference

[The Hypothesis API](https://h.readthedocs.io/en/latest/api/)

### License

This work is licensed under the [MIT License (MIT)](LICENSE) and it is not associated with [TinyLetter](https://www.tinyletter.com) in any way.
