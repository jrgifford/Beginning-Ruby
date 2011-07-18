require 'erb'

template = <<EOF
<% 1.upto(5) do |i| %>
  <p>This is iteration <%= i %></p>
<% end %>
EOF

puts ERB.new(template).result
