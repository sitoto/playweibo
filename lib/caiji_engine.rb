#encoding: UTF-8 
require 'nokogiri' 
require 'open-uri'

class CaijiEngine

  def self.init
    url = "http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html" 
    safe_gethtml(url)
    @html_stream = @html_stream.read
    @html_stream.encode!("utf-8", "gbk")
  end

  def self.get_item_list_from_html	
    init
    doc = Nokogiri::HTML.parse(@html_stream)
    list = []
    doc.css('td.td2 a.coname').map.each do |item|
      company_name = '' + item.text
      company_url = item['href']
      t = {}      
      t[:name] = company_name
      t[:url] = company_url
      list.push(t)
    end  
    list
  end

  def self.safe_gethtml(url)
    begin
      @html_stream = open(url)
    rescue OpenURI::HTTPError => ex
      puts "can't get url: #{url}"
      return ""
    end
  end
  def self.getlist
    true
  end

end
