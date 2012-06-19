require 'spec_helper'

describe "admin/enter_urls/show" do
  before(:each) do
    @admin_enter_url = assign(:admin_enter_url, stub_model(Admin::EnterUrl,
      :name => "Name",
      :url => "Url",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
