require 'test_helper'

class ContentUrlsControllerTest < ActionController::TestCase
  setup do
    @content_url = content_urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_url" do
    assert_difference('ContentUrl.count') do
      post :create, content_url: { status: @content_url.status, url: @content_url.url }
    end

    assert_redirected_to content_url_path(assigns(:content_url))
  end

  test "should show content_url" do
    get :show, id: @content_url
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_url
    assert_response :success
  end

  test "should update content_url" do
    put :update, id: @content_url, content_url: { status: @content_url.status, url: @content_url.url }
    assert_redirected_to content_url_path(assigns(:content_url))
  end

  test "should destroy content_url" do
    assert_difference('ContentUrl.count', -1) do
      delete :destroy, id: @content_url
    end

    assert_redirected_to content_urls_path
  end
end
