#encoding: utf-8
require 'nokogiri'
require 'open-uri'

class ContentUrl
  include Mongoid::Document
  include Mongoid::Timestamps

  field :weburl, :type => String
  field :status, :type => Integer
  field :name, :type => String

end
