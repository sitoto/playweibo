class Company
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :address, :type => String
  field :telephone, :type => String
  field :mobile, :type => String
  field :fax, :type => String
  field :email, :type => String
  field :postcode, :type => String
  field :location, :type => String
  field :description, :type => String
end
