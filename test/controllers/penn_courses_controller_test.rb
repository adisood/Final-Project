require 'test_helper'

class PennCoursesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get my_recommendations" do
    get :my_recommendations
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
