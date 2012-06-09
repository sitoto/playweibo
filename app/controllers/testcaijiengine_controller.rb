class TestcaijiengineController < ApplicationController
  
  def gpl
    
    Resque.enqueue(JobListPageHtmlContentGetWorker)

    @return = "job enqueue"

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
