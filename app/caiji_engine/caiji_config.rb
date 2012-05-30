load Rails.root + 'app/caiji_engine/caiji_51job.rb'
load Rails.root + 'app/caiji_engine/caiji_sinaweibo.rb'

module CaijiEngine
	CONFIG = 
	{
		:_51job => CaijiEngine::Caiji_51job,
		:_sinaweibo => CaijiEngine::Caiji_sinaweibo		
	}
end
