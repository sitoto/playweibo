class TestcaijiengineController < ApplicationController
  def gpl
#    @return = CaijiEngine::Base.get_page_list(params[:content_name])

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
