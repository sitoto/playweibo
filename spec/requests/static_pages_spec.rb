#encoding: utf-8
require 'spec_helper'

describe "StaticPages" do

  describe "GET /static_pages" do

    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get 'static_pages/home' #static_pages_index_path
      response.status.should be(200)
    end

    it "should have the content 'Play'" do
			visit '/static_pages/home'
			page.should have_content('Play')
		end
    it "should have the right title" do 
  		visit '/static_pages/home'
			page.should have_selector('title',
											:text => "首页")
		end

    it "should have the content '帮助'" do
			visit '/static_pages/help'
			page.should have_content('帮助')
    end

    it "should have the content '关于我们'" do
			visit '/static_pages/about'
			page.should have_content('关于我们')
    end

  end
end
