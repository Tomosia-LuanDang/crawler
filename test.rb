require "erb"
require 'pry'
require 'json'

# # Build template data class.
# class Product
#   def initialize( code, name, desc, cost )
#     @code = code
#     @name = name
#     @desc = desc
#     @cost = cost

#     @features = [ ]
#   end

#   def add_feature( feature )
#     @features << feature
#   end

#   # Support templating of member data.
#   def get_binding
#     binding
#   end

#   # ...
# end

# # Create template.
# template = %{
#   <html>
#     <head><title>Ruby Toys -- <%= @name %></title></head>
#     <body>

#       <h1><%= @name %> (<%= @code %>)</h1>
#       <p><%= @desc %></p>

#       <ul>
#         <% @features.each do |f| %>
#           <li><b><%= f %></b></li>
#         <% end %>
#       </ul>

#       <p>
#         <% if @cost < 10 %>
#           <b>Only <%= @cost %>!!!</b>
#         <% else %>
#            Call for a price, today!
#         <% end %>
#       </p>

#     </body>
#   </html>
# }.gsub(/^  /, '')

# rhtml = ERB.new(template)

# # Set up template data.
# toy = Product.new( "TZ-1002",
#                    "Rubysapien",
#                    "Geek's Best Friend!  Responds to Ruby commands...",
#                    999.95 )
# toy.add_feature("Listens for verbal commands in the Ruby language!")
# toy.add_feature("Ignores Perl, Java, and all C variants.")
# toy.add_feature("Karate-Chop Action!!!")
# toy.add_feature("Matz signature on left leg.")
# toy.add_feature("Gem studded eyes... Rubies, of course!")
# binding.pry
# # Produce result.
# rhtml.run(toy.get_binding)

def file_downloaded
    dir_path = './tmp/chromedriver'
    path = Dir.glob("#{dir_path}/*")
    file_name = File.basename(path[0].to_s)
    path_name = File.dirname(path[0].to_s)
    puts file_name
    puts path_name
    data_line = File.read("#{path_name}/#{file_name}")
    json_hash = JSON.parse(data_line)
    json_hash.each do
        |item|
        puts item["name"]
        binding.pry
      end
  end

  file_downloaded