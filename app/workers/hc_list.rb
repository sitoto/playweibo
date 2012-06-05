#encoding: utf-8
require 'nokogiri'
require 'open-uri'

class HcList
  @queue = :hc_list

  def self.perform(list_url_id)
    puts "list_url_id : #{list_url_id}"
    list = ListUrl.find(list_url_id)

    html_stream = safe_gethtml(list.weburl)

    doc = Nokogiri::HTML(html_stream)
    puts doc.at_css("title").text
    #puts doc.at_css("a.coname").text

    doc.css("span.company_name").each do |item|
      puts item.text

        url = item.at_css("a").attr("href")
	name = item.at_css("a").text
	t = {}
	t[:weburl] = url + '/shop/show.html'
	t[:name] = name
	t[:status] = 0
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

