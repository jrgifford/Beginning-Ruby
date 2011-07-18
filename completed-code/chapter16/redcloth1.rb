require 'rubygems'
require 'redcloth'

redcloth_text = <<EOF
h1. This is a title

Here is some _text_ that's formatted according to
"Textile":http://hobix.com/textile/ *specifications*.
And how about a quote?

bq. This section is a quote.. a block quote
more accurately..

Lists are also possible:

* Item 1
* Item 2
* Item 3
EOF

redcloth_obj = RedCloth.new redcloth_text
puts redcloth_obj.to_html
