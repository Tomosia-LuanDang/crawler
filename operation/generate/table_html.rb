module Operation
  module Generate
    class TableHtml
      attr_writer :json_hash, :html_file

      def initialize(json_hash, html_file)
        @json_hash = json_hash
        @html_file = html_file
      end

      def generate
        erb_file = './templates/table.html.erb'
        erb_str = File.read(erb_file)
        template = ERB.new(erb_str)
        res = template.result(binding)
        File.open(@html_file, 'w') do |f|
          f.write(res)
        end

      end
    end
  end
end
