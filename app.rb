load_path = Dir["./vendor/bundle/ruby/3.1.0/gems/**/lib"]
$LOAD_PATH.unshift(*load_path)

require 'axlsx'
require 'pry'                   
require 'erb'
require 'json'
require 'capybara'
require 'sinatra'
require 'csv'
require 'capybara/dsl'
require './config/capybara'
require './operation/crawl/helper_crawl'
require './operation/crawl/site_generatedata_crawl'
require './operation/generate/table_html'
require './operation/generate/export_csv'
require './operation/generate/export_excel'




crawl = Operation::Crawl::SiteGeneratedataCrawl.new
crawl.start do
  html_saved_at = './publics/user_management.html'
  generate_html = Operation::Generate::TableHtml.new(crawl.file_downloaded, html_saved_at)
  generate_html.generate


  csv_saved_at = './publics/user_management.csv'
  generate_csv = Operation::Generate::ExportCSV.new(crawl.file_downloaded, csv_saved_at)
  generate_csv.generate

  xlsx_saved_at = './publics/user_management.xlsx'
  generate_xlsx = Operation::Generate::ExportExcel.new(crawl.file_downloaded, xlsx_saved_at)
  generate_xlsx.generate

  
end

get '/' do
  send_file './publics/user_management.html'
end

get '/download-csv' do
  send_file './publics/user_management.csv'
end

get '/download-xlsx' do
  send_file './publics/user_management.xlsx'
end




