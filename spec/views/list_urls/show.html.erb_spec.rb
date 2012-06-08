require 'spec_helper'

describe "list_urls/show" do
  before(:each) do
    @list_url = assign(:list_url, stub_model(ListUrl))
  end

  it "renders attributes in <p>" do
    render
  end
end
