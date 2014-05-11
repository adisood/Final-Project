require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get class_list" do
    get :class_list
    assert_response :success
  end

  test "should get user_list" do
    get :user_list
    assert_response :success
  end

  test "should get log_in" do
    get :log_in
    assert_response :success
  end

  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

end
