require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get searchby_emergency" do
    get :searchby_emergency
    assert_response :success
  end

  test "should get searchby_symptoms" do
    get :searchby_symptoms
    assert_response :success
  end

  test "should get searchby_vitals" do
    get :searchby_vitals
    assert_response :success
  end

  test "should get tasks" do
    get :tasks
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

  test "should get palliative" do
    get :palliative
    assert_response :success
  end

  test "should get maintenance" do
    get :maintenance
    assert_response :success
  end

end
