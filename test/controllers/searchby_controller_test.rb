require 'test_helper'

class SearchbyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get firstaids" do
    get :firstaids
    assert_response :success
  end

  test "should get symptoms" do
    get :symptoms
    assert_response :success
  end

  test "should get vitals" do
    get :vitals
    assert_response :success
  end

end
