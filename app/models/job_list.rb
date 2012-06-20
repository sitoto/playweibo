class JobList
  include Mongoid::Document
	include Mongoid::Timestamps

  field :name, :type => String
  field :url, :type => String
  field :status, :type => Integer

  scope :recent, desc(:created_at)

end
