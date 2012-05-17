class Post 
 
  include Mongoid::Document
  include Mongoid::Timestamps
 # include Mongoid::SoftDelete
 # include Mongoid::BaseModel
  include Redis::Objects

  # attr_accessible :description, :title
  
  field :title, :type => String
  field :description, :type => String
  
  attr_accessible :description, :title

end
