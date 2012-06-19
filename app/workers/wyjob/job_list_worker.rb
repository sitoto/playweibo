#encoding: utf-8
require 'nokogiri'
require 'open-uri'

class JobListWorker
	include JobCai	
  @queue = :job_list

	def cai
		cai_51job_list
	end

  def self.perform(list_url_id)
    puts "list_url_id : #{list_url_id}"
    list = ListUrl.find(list_url_id)

    html_stream = safe_gethtml(list.weburl)
    html2 = html_stream.read
    html2.encode!("utf-8", "gbk")
   
    doc = Nokogiri::HTML(html2)
    doc.css('td.td2 a.coname').map.each do |item|
      company_name = '' + item.text
      company_url = item['href']
      t = {}      
      t[:name] = company_name
      t[:weburl] = company_url
	content_url = ContentUrl.new
        content_url.update_attributes(t)
 
    end
  end

  def self.safe_gethtml(url)
    begin
      html_stream = open(url)
    rescue OpenURI::HTTPError => ex
      puts "can't get url: #{url}"
      return ""
    end
  end

end
#a  = JobList.new
#a.get_enter_lists
