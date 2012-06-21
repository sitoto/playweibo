#encoding: UTF-8
require 'common'
class String  
    def br_to_new_line  
        self.gsub('<br>', "\n")  
    end  
    def strip_tag  
        self.gsub(%r[<[^>]*>], '')  
    end  
		def strip_all_tag
			self.gsub(%r[<.*>], '')
		end
		def strip_51job_tag
			self.gsub(%r[<br.*], '').gsub(%r[<[^>]*>], '')
		end
end #String 


module JobCai
	include Common

	def cai_51job_list
		get_list_enter_urls
		@url_lists = []
	
		@enter_urls.each do |url|
			cai_list(url)
		end			
		@url_lists = @url_lists.uniq
		@url_lists.each do |r|
			JobList.find_or_create_by(r)
		end
	end

	def cai_51job_detail
		job_list = JobList.criteria.in(:status => [nil, 0]).limit(10)
		job_list.each do |item|
p item
			t = cai_detail(item[:url])
p t
			company = Company.new
			t[:url] = item[:url]
			company.update_attributes(t)
			item.update_attribute(:status , 1)
		end
		
	end
	
	def get_list_enter_urls
		@enter_urls = []
		lists = []
    
#		lists.push( {:name => '北京', :value => '0100' } )
   # lists.push( {:name => '上海', :value => '0200' } )
    lists.push( {:name => '深圳', :value => '0400' } )

 	  lists.each do |area|
			@enter_urls << 'http://search.51job.com/list/' + area[:value] +  '00%252C00,000000,0000,00,3,99,%2B,2,'
    end

	end
	
	def finish
		@url_lists = nil
	end


  private 
	def list_url(url, page_index)
#		if page_index <= @max_page_num	
			url + "#{page_index}" + ".html"
#		end
	end

	def cai_list(url, page_index = 0)
		c_url = list_url(url, page_index += 1)
		html = get_list_page_html(c_url)
#		puts c_url
		if t = parse_list_page_html(html)
			puts page_index
#			puts t
			@url_lists += t
			cai_list(url, page_index) if page_index < 3  
		end

	end

  # 根据URL获取页HTML
  def get_list_page_html(url, from_encode ="gbk", to_encode = "utf-8")
		safe_open(url, retries = 5, sleep_time =0.42, headers ={}, from_encode , to_encode )
	end 
  # 从HTML中分析出内容页URL列表
  def parse_list_page_html(html)
		lists = []
    begin
      doc = Nokogiri::HTML.parse(html)
      doc.css('td.td2 a.coname').map.each do |item|
        company_name = '' + item.text
        company_url = item['href']
        t = {}
        t[:name] = company_name
        t[:url] = company_url
        lists.push(t)
      end  
    rescue
      puts 'error on parsing list page html'
			nil
    end
		lists.uniq
  end
 
	def cai_detail(url)
		html = get_list_page_html(url)
		parse_content_page_html(html)	
	
	end
  # 根据HTML分析出信息内容
  def parse_content_page_html(html)
    content_item = {} #Company.new 
    begin
      doc = Nokogiri::HTML(html)
      content_item[:name] = doc.at_css('td.sr_bt').inner_html.strip_all_tag.strip
			content_item[:name] = content_item[:name].gsub(/ /, '')
			content_item[:description] = doc.css("table.jobs_1 tr")[1].inner_html.br_to_new_line.strip_tag
		  content_item[:description]  += doc.at_css("p.txt_font").inner_html.br_to_new_line.strip_tag

			rows = doc.css("p.txt_font1")
			@details = rows.collect do |row|
				detail = {}
				[
					[:name, 0],
					[:value, 1],
				].each do |name, cc|
					detail[name] = row.inner_html.strip_51job_tag.split(/[：]/)[cc]
				end
				detail
			end
			
			content_item[:contacts] = @details

    rescue
      puts 'error on parsing content page html'
			nil
    end
    return content_item
  end


end
