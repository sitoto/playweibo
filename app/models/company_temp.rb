class CompanyTemp
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :name, :type => String
  field :address, :type => String
  field :telephone, :type => String
  field :mobile, :type => String
  field :fax, :type => String
  field :email, :type => String
  field :postcode, :type => String
  field :location, :type => Array
  field :description, :type => String
  
  has_many :contacts
  attr_accessible :name, :address, :telephone, :mobile, :fax, :email, :postcode, :location, :description
end

class Contact
  include Mongoid::Documet

  field :name, :type => String
  field :value, :type => String
  belongs_to :company_temp

  attr_accessible :name, :value
end
