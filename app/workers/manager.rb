class Manager
  def self.distribute(url, company_id)
    regex_job_company = /search\.51job\.com\/list\/co\,c/
    regex_hc_company = /b2b\.hc360\.com\/shop\/show.html/

    if regex_job_company =~ url
 	Resque.enqueue(JobCompany, company_id)
    elsif regex_hc_company =~ url
	Resque.enqueue(HcCompany, company_id)    
    end

  end

end

