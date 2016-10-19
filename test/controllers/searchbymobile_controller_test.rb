require 'test_helper'

class SearchbymobileControllerTest < ActionController::TestCase
  test "should get emergency" do
    get :emergency
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
