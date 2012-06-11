class Cpanel::ApplicationController < ApplicationController
  layout "cpanel"
  before_filter :authenticate_user!

  def index 
    
  end
end
