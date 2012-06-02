#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'

class ContentUrlsController < ApplicationController
  layout "spider"

  # GET /content_urls
  # GET /content_urls.json
  def index
    @content_urls = ContentUrl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_urls }
    end
  end

  # GET /content_urls/1
  # GET /content_urls/1.json
  def show
    @content_url = ContentUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_url }
    end
  end

  # GET /content_urls/new
  # GET /content_urls/new.json
  def new
    @content_url = ContentUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_url }
    end
  end

  # GET /content_urls/1/edit
  def edit
    @content_url = ContentUrl.find(params[:id])
  end

  # POST /content_urls
  # POST /content_urls.json
  def create
    @content_url = ContentUrl.new(params[:content_url])
    if @content_url.status == 1
      
     # caiji(@content_url.weburl)
    end



    respond_to do |format|
      if @content_url.save
	Resque.enqueue(JobCompany, @content.id)

        format.html { redirect_to @content_url, notice: 'url was successfully created.查看企业目录，看是否有新增采集。' }
        format.json { render json: @content_url, status: :created, location: @content_url }
      else
        format.html { render action: "new" }
        format.json { render json: @content_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_urls/1
  # PUT /content_urls/1.json
  def update
    @content_url = ContentUrl.find(params[:id])

    respond_to do |format|
      if @content_url.update_attributes(params[:content_url])
        format.html { redirect_to @content_url, notice: 'Content url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_urls/1
  # DELETE /content_urls/1.json
  def destroy
    @content_url = ContentUrl.find(params[:id])
    @content_url.destroy

    respond_to do |format|
      format.html { redirect_to content_urls_url }
      format.json { head :no_content }
    end
  end
  
  protected
   def caiji(url)
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

    t[:description] = description 
    
    @company = Company.new
    @company.update_attributes(t)
    @company.save!
   end
  def safe_iconv(s)
    begin
      Iconv.conv('UTF-8','GB2312', s)
    rescue
      s
    end
  end

end
