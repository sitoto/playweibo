class Admin::WyjobController < ApplicationController
  def index
		@job_list = JobList.count
  end

  def getlist
		t = JobListWorker.new
		t.cai
		@url_lists = JobList.all
		#@url_lists = t.cai		
		#t.finish

  end

  def getdetail

  end
end
