class TestcaijiengineController < ApplicationController
  def gpl
    Resque.enqueue(JobWorker)
    @return = "JobWorker enqueue"

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
