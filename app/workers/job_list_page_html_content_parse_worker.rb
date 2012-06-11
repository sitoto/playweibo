require 'nokogiri'
require 'open-uri'

class JobListPageHtmlContentParseWorker
  @queue = :job_list_page_html_content_parse_worker

  def self.perform
    puts 'job_list_page_html_parse_worker'
    sleep(0.1)
  end
end