class ListUrl
  include Mongoid::Document
  field :name, :type => String
  field :weburl, :type => String
  field :status, :type => Integer
  field :class, :type => String
end
