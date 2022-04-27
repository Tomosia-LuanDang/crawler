module Operation
  module Crawl
    class SiteGeneratedataCrawl
      include Capybara::DSL
      Capybara.current_driver = :selenium
      def start
        binding.pry
        visit('https://generatedata.com/')
        sleep(10)
      end      
    end
  end
end