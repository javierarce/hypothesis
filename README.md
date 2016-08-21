Unofficial [hypothesis](https://hypothes.is) ruby gem.

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

That will output a JSON with the found items:

```ruby
 => {"rows"=>[{"updated"=>"2016-08-21T13:08:33.877253+00:00", "group"=>"__world__", "target"=>[{"source"=>"http://thelongandshort.org/society/war-on-cash", "selector"=>[{"endContainer"=>"/main[1]/article[1]/div[1]/div[6]/div[1]/p[3]", "startContainer"=>"/main[1]/article[1]/div[1]/div[6]/div[1]/p[3]", "type"=>"RangeSelector", "startOffset"=>0, "endOffset"=>368}, {"type"=>"TextPositionSelector", "end"=>9811, "start"=>9443}, {"exact"=>"Anyone defending cash in this context will be labelled as an anti-progress, reactionary, and nostalgic Luddite. That's why we must not defend cash. Rather, we should focus on pointing out that the Death of Cash means the Rise of Something Else. We are fighting a broader battle to maintain alternatives to the growing digital panopticon that is emerging all around us.", "prefix"=>"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", "type"=>"TextQuoteSelector", "suffix"=>"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}], "links"=>{"json"=>"https://hypothes.is/api/annotations/XUdzmGegAeaMle8incguxg", "html"=>"https://hypothes.is/a/XUdzmGegEeaNle8inzguxg", "incontext"=>"https://hyp.is/XUdzmGegAeaMle8incguxg/thelongandshort.org/society/war-on-cash"}, "tags"=>[], "text"=>"", "created"=>"2016-08-21T13:08:33.877245+00:00", "uri"=>"http://thelongandshort.org/society/war-on-cash", "user"=>"acct:javier@hypothes.is", "document"=>{"title"=>["The War on Cash"]}, "id"=>"XUdzmGegAeaMle8incguxg", "permissions"=>{"read"=>["acct:javier@hypothes.is"], "admin"=>["acct:javier@hypothes.is"], "update"=>["acct:javier@hypothes.is"], "delete"=>["acct:javier@hypothes.is"]}}], "total"=>1}
```

### API reference

[The Hypothesis API](https://h.readthedocs.io/en/latest/api/)
