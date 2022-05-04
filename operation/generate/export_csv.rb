module Operation
  module Generate
    class ExportCSV
      include Operation::Crawl::HelperCrawl

      def initialize(json_hash, csv_file)
          @json_hash = json_hash
          @csv_file = csv_file
      end

      def generate
				CSV.open(@csv_file, "w" , headers: get_header_column(@json_hash), write_headers: true) do |csv|
          @json_hash.each do |hash|
            csv << hash.values
					end
				end
      end
      
    end
  end
end
