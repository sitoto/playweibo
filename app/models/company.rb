class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :url, :type => String
  field :name, :type => String
  field :address, :type => String
  field :telephone, :type => String
  field :mobile, :type => String
  field :fax, :type => String
  field :email, :type => String
  field :postcode, :type => String
  field :location, :type => String
  field :description, :type => String

  embeds_many :contacts
end

class Contact
  include Mongoid::Document

  field :name, :type => String
  field :value, :type => String

  embedded_in :company
end
