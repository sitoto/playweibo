#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class JobList
  @queue = :job_list

  def self.perform(list_url_id)
    puts "list_url_id : #{list_url_id}"
    list = ListUrl.find(list_url_id)

    html_stream = safe_gethtml(list.weburl)
open(list.weburl) {|f|
  f.each_line {|line| p line}
  p f.base_uri         # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
  p f.content_type     # "text/html"
  p f.charset          # "iso-8859-1"
  p f.content_encoding # []
  p f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
}

    doc = Nokogiri::HTML(html_stream)
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

  def self.safe_iconv(s)
    begin
      Iconv.conv('UTF-8','GB2312', s)
    rescue
      s
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

