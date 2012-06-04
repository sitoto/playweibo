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

        format.html { redirect_to @content_url, notice: 'url was successfully created.' }
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
 
end
