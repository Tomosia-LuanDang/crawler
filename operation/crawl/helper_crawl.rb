module Operation
  module Crawl
    module HelperCrawl
      def get_header_column(json_hash)
        json_hash.first.keys.map { |item| item.capitalize }
      end
    end
  end
end
