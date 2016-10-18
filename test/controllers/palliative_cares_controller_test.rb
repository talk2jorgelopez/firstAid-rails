require 'test_helper'

class PalliativeCaresControllerTest < ActionController::TestCase
  setup do
    @palliative_care = palliative_cares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palliative_cares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palliative_care" do
    assert_difference('PalliativeCare.count') do
      post :create, palliative_care: { pCare_para1: @palliative_care.pCare_para1, pCare_para2: @palliative_care.pCare_para2, pCare_title: @palliative_care.pCare_title }
    end

    assert_redirected_to palliative_care_path(assigns(:palliative_care))
  end

  test "should show palliative_care" do
    get :show, id: @palliative_care
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palliative_care
    assert_response :success
  end

  test "should update palliative_care" do
    patch :update, id: @palliative_care, palliative_care: { pCare_para1: @palliative_care.pCare_para1, pCare_para2: @palliative_care.pCare_para2, pCare_title: @palliative_care.pCare_title }
    assert_redirected_to palliative_care_path(assigns(:palliative_care))
  end

  test "should destroy palliative_care" do
    assert_difference('PalliativeCare.count', -1) do
      delete :destroy, id: @palliative_care
    end

    assert_redirected_to palliative_cares_path
  end
end
