require 'nokogiri'
require 'open-uri'

=begin

http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0302%2C0100%2C0200%2C1802&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&
keywordtype=0&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14
http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0302%2C0100%2C0200%2C1802&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&
keywordtype=0&curr_page=2&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14
http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0200&district=0000&funtype=2500&industrytype=32&issuedate=9&providesalary=99&
keyword=Ruby&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14

http://search.51job.com/jobsearch/search_result.php?
fromJs=1&
jobarea=0302%2C0100%2C0200%2C1802&
district=0000&
funtype=0000&
industrytype=00&
issuedate=9&
providesalary=99&
keywordtype=0&
curr_page=1&
lang=c&
stype=2&
postchannel=0000&
workyear=99&
cotype=99&
degreefrom=99&
jobterm=01&
lonlat=0%2C0&
radius=-1&
ord_field=0&
list_type=0&
fromType=14

参数中cuee_page=[1,100000]

=end

class JobListPageHtmlContentGetWorker
  @queue = :job_list_page_html_content_get_worker

  def self.perform
    while true
      puts 'job_list_page_html_get_worker' + Time.now.to_s
      sleep(1)
    end
  end
end
