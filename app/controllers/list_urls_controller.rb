class ListUrlsController < ApplicationController
  layout "spider"
  # GET /list_urls
  # GET /list_urls.json
  def index
    @list_urls = ListUrl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_urls }
    end
  end

  # GET /list_urls/1
  # GET /list_urls/1.json
  def show
    @list_url = ListUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_url }
    end
  end

  # GET /list_urls/new
  # GET /list_urls/new.json
  def new
    @list_url = ListUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_url }
    end
  end

  # GET /list_urls/1/edit
  def edit
    @list_url = ListUrl.find(params[:id])
  end

  # POST /list_urls
  # POST /list_urls.json
  def create
    @list_url = ListUrl.new(params[:list_url])

    respond_to do |format|
      if @list_url.save
	Manager.distribute(@list_url.weburl, @list_url.id)

        format.html { redirect_to @list_url, notice: 'List url was successfully created.' }
        format.json { render json: @list_url, status: :created, location: @list_url }
      else
        format.html { render action: "new" }
        format.json { render json: @list_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list_urls/1
  # PUT /list_urls/1.json
  def update
    @list_url = ListUrl.find(params[:id])

    respond_to do |format|
      if @list_url.update_attributes(params[:list_url])
        format.html { redirect_to @list_url, notice: 'List url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_urls/1
  # DELETE /list_urls/1.json
  def destroy
    @list_url = ListUrl.find(params[:id])
    @list_url.destroy

    respond_to do |format|
      format.html { redirect_to list_urls_url }
      format.json { head :no_content }
    end
  end
end
