#encoding: utf-8
require 'nokogiri'
require 'open-uri'

class JobList
  @queue = :job_list

  def self.perform(list_url_id)
    puts "list_url_id : #{list_url_id}"
    list = ListUrl.find(list_url_id)

    html_stream = safe_gethtml(list.weburl)
    html2 = html_stream.read
    html2.encode!("utf-8", "gbk")
   
    doc = Nokogiri::HTML(html2)
    puts doc.at_css("title").text
    #puts doc.at_css("a.coname").text

    doc.css("td.td2").each do |item|
      puts item.text
      #if item.at_css("td.td2 a")
        url = item.at_css("a").attr("href")
	name = item.at_css("a").text
	t = {}
	t[:weburl] = url
	t[:name] = name
	content_url = ContentUrl.new
        content_url.update_attributes(t)
 
#      end
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

