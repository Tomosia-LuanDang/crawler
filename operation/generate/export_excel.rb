module Operation
  module Generate
    class ExportExcel
      include Operation::Crawl::HelperCrawl

      def initialize(json_hash, xlsx_file)
        @json_hash = json_hash
        @xlsx_file = xlsx_file
      end

      def generate
        p = Axlsx::Package.new
        p.workbook.add_worksheet(:name => "Crawl Data") do |sheet|
          sheet.add_row get_header_column(@json_hash)
          @json_hash.each { |hash| sheet.add_row(hash.values) }
        end
        p.serialize(@xlsx_file)
      end
    end
  end
end
