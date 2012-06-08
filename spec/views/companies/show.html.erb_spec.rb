require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company))
  end

  it "renders attributes in <p>" do
    render
  end
end
