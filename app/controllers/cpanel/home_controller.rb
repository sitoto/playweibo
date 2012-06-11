class Cpanel::HomeController < Cpanel::ApplicationController
  def index
    @companies = Company.recent.limit(5)
  end
end
