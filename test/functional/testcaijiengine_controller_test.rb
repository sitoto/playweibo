require 'test_helper'

class TestcaijiengineControllerTest < ActionController::TestCase
  test "should get gpl" do
    get :gpl
    assert_response :success
  end

end
