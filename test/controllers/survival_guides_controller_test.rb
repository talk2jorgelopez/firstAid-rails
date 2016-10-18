require 'test_helper'

class SurvivalGuidesControllerTest < ActionController::TestCase
  setup do
    @survival_guide = survival_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survival_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survival_guide" do
    assert_difference('SurvivalGuide.count') do
      post :create, survival_guide: { guide_para1: @survival_guide.guide_para1, guide_para2: @survival_guide.guide_para2, guide_title: @survival_guide.guide_title }
    end

    assert_redirected_to survival_guide_path(assigns(:survival_guide))
  end

  test "should show survival_guide" do
    get :show, id: @survival_guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survival_guide
    assert_response :success
  end

  test "should update survival_guide" do
    patch :update, id: @survival_guide, survival_guide: { guide_para1: @survival_guide.guide_para1, guide_para2: @survival_guide.guide_para2, guide_title: @survival_guide.guide_title }
    assert_redirected_to survival_guide_path(assigns(:survival_guide))
  end

  test "should destroy survival_guide" do
    assert_difference('SurvivalGuide.count', -1) do
      delete :destroy, id: @survival_guide
    end

    assert_redirected_to survival_guides_path
  end
end
