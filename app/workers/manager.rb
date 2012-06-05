class Manager
  def self.distribute(url, company_id)
    regex_job_company = /search\.51job\.com\/list\/co\,c/
      regex_job_list = /search\.51job\.com\/list\/\d+,/
    regex_hc_company = /b2b\.hc360\.com\/shop\/show.html/
    regex_hc_list = /hc360\.com\/supply/

    if regex_job_company =~ url
 	Resque.enqueue(JobCompany, company_id)
    elsif regex_hc_company =~ url
	Resque.enqueue(HcCompany, company_id)    
    elsif regex_job_list =~ url
      Resque.enqueue(JobList, company_id) #list_url_id
    elsif regex_hc_list =~ url
      Resque.enqueue(HcList, company_id)
    end

  end

end

