require Rails.root + 'app/helpers/caiji_engine/caiji_51job.rb'
#require './caiji_51job'


class CaijiEngine
  def get_page_list
  	return yield
  end
  def get_page_html
  	return yield
  end
end