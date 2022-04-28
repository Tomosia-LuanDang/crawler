module Operation
  module Generate
    class TableHtml
      def initialize()
        #...
      end
    
      # Support templating of member data.
      def get_binding
        binding
      end

      def generate
        # Produce result
        rhtml.run(users.get_binding)
        #save to public
        #...
      end
    end
                  
    template = %{
                  <html>
                    <head>
                      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
                      <title>Crawl</title>
                    </head>
                    <body>
                      <div class="container">
                        <h2 class="text-center">User Management</h2>
                        <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <%  json_hash[0].keys.each do |key| %>
                                <th scope="col"><%= key %></th>
                              <% end %>
                            </tr>
                          </thead>
                          <tbody>
                          <%  json_hash.each_with_index do |item, index| %>
                            <tr>
                              <th scope="row"><%= index + 1 %></th>
                              <td>item["name"]</td>
                              <td>item["phone"]</td>
                              <td>item["email"]</td>
                              <td>item["country"]</td>
                              <td>item["region"] nag</td>
                              <td>item["text"] chap ca ban</td>
                            </tr>
                           <% end %>
                          </tbody>
                        </table>
                      </div>
                    </body>
                  </html>
                }.gsub(/^  /, '')
    rhtml = ERB.new(template)
  end
end



