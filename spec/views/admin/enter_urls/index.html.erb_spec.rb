require 'spec_helper'

describe "admin/enter_urls/index" do
  before(:each) do
    assign(:admin_enter_urls, [
      stub_model(Admin::EnterUrl,
        :name => "Name",
        :url => "Url",
        :status => 1
      ),
      stub_model(Admin::EnterUrl,
        :name => "Name",
        :url => "Url",
        :status => 1
      )
    ])
  end

  it "renders a list of admin/enter_urls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
