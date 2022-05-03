module Operation
    module Generate
      class ExportCSV
        def initialize(json_hash, csv_file)
            @json_hash = json_hash
            @csv_file = csv_file
        end

        def generate
					CSV.open(@csv_file, "w" , headers: get_header_column, write_headers: true) do |csv|
            @json_hash.each do |hash|
              csv << hash.values #write value to file
						end
					end
        end

        private

        def get_header_column
          @json_hash.first.keys.map do |item|
            item.capitalize
          end
        end

      end
    end
end
