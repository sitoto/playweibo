require Rails.root + 'app/helpers/caiji_engine/base.rb'

class TestcaijiengineController < ApplicationController
  def gpl
    #@return = CaijiEngine::Base.get_page_list { Caiji_51job.new.get_page_list }

    @return = CaijiEngine::Base.get_page_list(params[:content_name] )

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
end
