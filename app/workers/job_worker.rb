#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class JobWorker
  @queue = :job_worker

  def self.perform()
    puts "job worker perform"
    puts "get html..."

    url = "http://search.51job.com/list/0100,0000,0000,00,3,99,%2B,2,1.html"
    html_stream = safe_gethtml(url)

    puts "get html ok"

    html_string = html_stream.read

    puts "html begin=============================================================================="
    #puts html_string
    puts "html end=============================================================================="

    get_item_list_from_html(html_string)    

    puts "job work perform ok"

  end




  private
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




  def self.get_item_list_from_html(html_string)
    #<td class="td2"><a href="http://search.51job.com/list/co,c,2316147,0000,10,1.html" class="coname" target="_blank" >北京龙鼎华投资集团有限责任公司</a></td>
    #re = /<td class=\"td2\"><a(.*?)class=\"coname\"(.*?)>(.*?)<\/a><\/td>/
    re = /<td class=\"td2\">/
    html_string.scan(re).each do |item|
      puts item
      #company_name = ''
      #company_url = ''
      #t = {}      
      #t[:name] = company_name
      #t[:url] = company_url
      #content_url = ContentUrl.new
      #content_url.update_attributes(t)
      #list.push(t)
    end
    #list
  end





  def self.get_item_list_from_html_2(html_string)
    doc = Nokogiri::HTML.parse(html_string)
    doc.css('td.td2 a.coname').map.each do |item|
      puts item['href']
    end  
  end

end