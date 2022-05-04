module Operation
    module Generate
      class ExportExcel
        
        def initialize(json_hash, xlsx_file)
          @json_hash = json_hash
          @xlsx_file = xlsx_file
        end

        def generate
          p = Axlsx::Package.new
          p.workbook.add_worksheet(:name => "Crwal Data") do |sheet|
            sheet.add_row get_header_column
            @json_hash.each do |hash|
              sheet.add_row hash.values
						end
          end
          p.serialize(@xlsx_file)
          


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
