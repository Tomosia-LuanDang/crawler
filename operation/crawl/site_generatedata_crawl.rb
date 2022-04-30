module Operation
  module Crawl
    class SiteGeneratedataCrawl
      include Capybara::DSL
      Capybara.current_driver = :selenium
      def start
        clear_folder
        # download_site_generatedata
        yield
        clear_folder
      end
      
      def file_downloaded
        dir_path = './tmp/chromedriver'
        path = Dir.glob("#{dir_path}/*")
        file_name = File.basename(path[0].to_s)
        path_name = File.dirname(path[0].to_s)
        data_line = File.read("#{path_name}/#{file_name}")
        json_hash = JSON.parse(data_line)
      end

      private
      
      def download_site_generatedata
        visit_page
        choose_the_types_of_data
        choose_a_data_format
        click_coockie_ok
        generate_new_data_set
        generate_json_data
        download_json_data
      end

      def visit_page
        visit('https://generatedata.com/')
      end
      
      def choose_the_types_of_data 
        find(".Homepage__dataTypeGrid--1qR div", text: "Name").click(delay: 0.3)
        find(".Homepage__dataTypeGrid--1qR div", text: "Phone").click(delay: 0.3)
        find(".Homepage__dataTypeGrid--1qR div", text: "Email").click(delay: 0.3)
        find(".Homepage__dataTypeGrid--1qR div", text: "Country").click(delay: 0.3)
        find(".Homepage__dataTypeGrid--1qR div", text: "Region").click(delay: 0.3)
        find(".Homepage__dataTypeGrid--1qR div", text: "Word").click(delay: 0.3)
      end

      def choose_a_data_format
        find(".Homepage__core--2z5", text: "JSON").click(delay: 0.3)
      end

      def clear_folder
        dir_path = '/home/luandang/Documents'
        FileUtils.rm_rf Dir.glob("#{dir_path}/*") unless Dir.empty?(dir_path)
      end

      def generate_new_data_set
        find(".Homepage__button--xs_", text: "Generate!").click(delay: 3)
      end

      def click_coockie_ok
        find(".Cookies__overlay--17D button").click(delay: 0.3)
      end

      def generate_json_data
        click_button(class: 'Footer__generateButton--q2v')
        find(".MuiDialogActions-spacing button", text: "GENERATE").click(delay: 5)
      end

      def download_json_data
        find(".MuiDialogActions-spacing .MuiButtonBase-root", text: "DOWNLOAD").click(delay: 0.3)
      end

    end
  end
end