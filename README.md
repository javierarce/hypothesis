Unofficial `hypothesis` ruby gem.

### Installation

```gem install hypothesis```

### Usage

You'll need to generate an API token on your [Hypothesis developer page](https://hypothes.is/account/developer).


```ruby
require 'rubygems'
require 'hypothesis'

hypothesis = Hypothesis::API.new('YOUR_HYPOTHESIS_API_KEY')
puts hypothesis.search({ user: 'javier', limit: 10 })

```

That will output:

```ruby
```

### API reference

[The Hypothesis AP](https://h.readthedocs.io/en/latest/api/)
# hypothesis
