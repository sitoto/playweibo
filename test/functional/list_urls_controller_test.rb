require 'test_helper'

class ListUrlsControllerTest < ActionController::TestCase
  setup do
    @list_url = list_urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_url" do
    assert_difference('ListUrl.count') do
      post :create, list_url: { name: @list_url.name, status: @list_url.status, weburl: @list_url.weburl }
    end

    assert_redirected_to list_url_path(assigns(:list_url))
  end

  test "should show list_url" do
    get :show, id: @list_url
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_url
    assert_response :success
  end

  test "should update list_url" do
    put :update, id: @list_url, list_url: { name: @list_url.name, status: @list_url.status, weburl: @list_url.weburl }
    assert_redirected_to list_url_path(assigns(:list_url))
  end

  test "should destroy list_url" do
    assert_difference('ListUrl.count', -1) do
      delete :destroy, id: @list_url
    end

    assert_redirected_to list_urls_path
  end
end
