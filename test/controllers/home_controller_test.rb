require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get how_to" do
    get :how_to
    assert_response :success
  end

  test "should get survival_guide" do
    get :survival_guide
    assert_response :success
  end

end
