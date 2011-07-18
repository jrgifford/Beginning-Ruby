markdown_text = %q{
This is a title
===============

Here is some _text_ that's formatted according to [Markdown][1]
*specifications*. And how about a quote?

 [1]: http://daringfireball.net/projects/markdown/     

> This section is a quote.. a block quote
> more accurately..

Lists are also possible:

* Item 1
* Item 2
* Item 3
}

require 'rubygems'
require 'bluecloth'

bluecloth_obj = BlueCloth.new(markdown_text)
puts bluecloth_obj.to_html
