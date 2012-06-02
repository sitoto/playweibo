#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class HcCompany
  @queue = :hc_queue

  def self.perform(company_id)
    puts "1.Begin to get company's id: #{company_id}"
    company = Company.find(company_id)
    html_stream = safe_gethtml(company.url)

    doc = Nokogiri::HTML(html_stream)
    t = {}
    name = doc.at_css("li.comName a").text
    t[:name] = name
   
    description = doc.at_css("div.cAbout").inner_html
#    description = description.gsub(/\<div.+div>/, '')
    description = safe_iconv(description.to_s)
    t[:description] = description 

    doc.css("div.contactbox li").each do |item|
      if item.text.strip[0] == "电"
	t[:telephone] = item.text.strip.split(/：/)[1]
      end
      if item.text.strip[0] == "传"
	t[:fax] = item.text.strip.split(/：/)[1]
      end
    end

    doc.css("div.detailsinfo tr").each do |item|
      if item.css("td")[2] && item.css("td")[2].text  == "经营地址："
        address = item.css("td")[3].text
	t[:address] = address
      end
      #其它信息（name：value)
      #
    end
=begin   
=end
    company.update_attributes(t)
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

