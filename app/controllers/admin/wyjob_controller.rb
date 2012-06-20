class Admin::WyjobController < ApplicationController
  def index
		@job_list_all_num =JobList.count
		@job_list_num = JobList.criteria.in(:status => [nil, 0]).count
  end
	def updatelist
		t = JobListWorker.new
		t.cai
		t.finish
		t = nil
		redirect_to :action => 'getlist'
	end
	def updatedetail
		t = JobDetailWorker.new
		t.cai
		t = nil
		redirect_to :action => 'getdetail'
	end
	

  def getlist
		#t = JobListWorker.new
		#t.cai
		@url_lists = JobList.recent.page(params[:page]).per(20)
		#@url_lists = t.cai		
		#t.finish

  end

  def getdetail
		#t = JobDetailWorker.new
		#t.cai
		@details = Company.recent.page(params[:page]).per(20)

  end
end
