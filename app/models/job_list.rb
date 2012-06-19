class JobList
  include Mongoid::Document
  field :name, :type => String
  field :url, :type => String
  field :status, :type => Integer
end
