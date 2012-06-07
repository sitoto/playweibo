#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class JobCompany
  @queue = :job_queue

  def self.perform(company_id)
    puts "1.Begin to get company's id: #{company_id}"
    company = Company.find(company_id)
    html_stream = safe_gethtml(company.url)

    doc = Nokogiri::HTML(html_stream)
    t = {}
    name = doc.at_css("td.sr_bt").text
    #name = name.gsub(/\查.+/, '').strip
    t[:name] = name
    
    description = doc.at_css("p.txt_font").inner_html
    description = safe_iconv(description.to_s)
    t[:description] = description 

    doc.css("p.txt_font1").each do |item|
      if item.text.strip[0] == "地"
        #address = item.text.gsub(/\具.+/, '')
	t[:address] = address.strip.split(/：/)[1]
      end
      if item.text.strip[0] == "电"
	t[:telephone] = item.text.strip.split(/：/)[1]
      end
      if item.text.strip[0] == "传"
	t[:fax] = item.text.strip.split(/：/)[1]
      end
    end

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

