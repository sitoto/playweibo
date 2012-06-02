#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class JobCompany
  @queue = :job_queue

  def self.perform(company_id)

    puts "1.Begin to do #{company_id}"
    company = Company.find(company_id)
    url = company.url

    begin
      html_stream = open(url)
    rescue OpenURI::HTTPError => ex
      puts "can't get url: #{url}"
      return ""
    end
    doc = Nokogiri::HTML(html_stream)
    t = {}
    name = doc.at_css("td.sr_bt").text
    name = name.gsub(/\查.+/, '').strip
    t[:name] = name


    doc.css("p.txt_font1").each do |item|
      if item.text.strip[0] == "地"
        address = item.text.gsub(/\具.+/, '')
	address = address.strip
	t[:address] = address.split(/：/)[1]
      end
      if item.text.strip[0] == "电"
	t[:telephone] = item.text.strip.split(/：/)[1]
      end
      if item.text.strip[0] == "传"
	t[:fax] = item.text.strip.split(/：/)[1]
      end
    end
    description = doc.at_css("p.txt_font").inner_html
    description = safe_iconv(description.to_s)
    #description =  Iconv.conv('UTF_8', 'GB2312', description.to_s)# safe_iconv(description.to_s)

    t[:description] = description 
    
    company.update_attributes(t)
    company.save!
  end

  def self.safe_iconv(s)
    begin
      Iconv.conv('UTF-8','GB2312', s)
    rescue
      s
    end
  end



end

