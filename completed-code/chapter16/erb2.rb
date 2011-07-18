require 'erb'

array_of_stuff = %w{this is a test}

template = <<EOF
<% array_of_stuff.each_with_index do |item, index| %>
  <p>Item <%= index %>: <%= item %></p>
<% end %>
EOF

puts ERB.new(template).result
