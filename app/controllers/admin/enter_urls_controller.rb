class Admin::EnterUrlsController < ApplicationController
  # GET /admin/enter_urls
  # GET /admin/enter_urls.json
  def index
    @admin_enter_urls = Admin::EnterUrl.all
		@content_urls = ContentUrl.count

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_enter_urls }
    end
  end

  # GET /admin/enter_urls/1
  # GET /admin/enter_urls/1.json
  def show
    @admin_enter_url = Admin::EnterUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_enter_url }
    end
  end

  # GET /admin/enter_urls/new
  # GET /admin/enter_urls/new.json
  def new
    @admin_enter_url = Admin::EnterUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_enter_url }
    end
  end

  # GET /admin/enter_urls/1/edit
  def edit
    @admin_enter_url = Admin::EnterUrl.find(params[:id])
  end

  # POST /admin/enter_urls
  # POST /admin/enter_urls.json
  def create
    @admin_enter_url = Admin::EnterUrl.new(params[:admin_enter_url])

    respond_to do |format|
      if @admin_enter_url.save
        format.html { redirect_to @admin_enter_url, notice: 'Enter url was successfully created.' }
        format.json { render json: @admin_enter_url, status: :created, location: @admin_enter_url }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_enter_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/enter_urls/1
  # PUT /admin/enter_urls/1.json
  def update
    @admin_enter_url = Admin::EnterUrl.find(params[:id])

    respond_to do |format|
      if @admin_enter_url.update_attributes(params[:admin_enter_url])
        format.html { redirect_to @admin_enter_url, notice: 'Enter url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_enter_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/enter_urls/1
  # DELETE /admin/enter_urls/1.json
  def destroy
    @admin_enter_url = Admin::EnterUrl.find(params[:id])
    @admin_enter_url.destroy

    respond_to do |format|
      format.html { redirect_to admin_enter_urls_url }
      format.json { head :no_content }
    end
  end
end
