require Rails.root + 'app/helpers/caiji_engine/caiji_engine.rb'

class TestcaijiengineController < ApplicationController
  def gpl
    @return = CaijiEngine.new.get_page_list { Caiji_51job.new.get_page_list }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
end
