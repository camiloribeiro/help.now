require 'test_helper'

class HelpCentersControllerTest < ActionController::TestCase
  setup do
    @help_center = help_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help_center" do
    assert_difference('HelpCenter.count') do
      post :create, help_center: {  }
    end

    assert_redirected_to help_center_path(assigns(:help_center))
  end

  test "should show help_center" do
    get :show, id: @help_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help_center
    assert_response :success
  end

  test "should update help_center" do
    put :update, id: @help_center, help_center: {  }
    assert_redirected_to help_center_path(assigns(:help_center))
  end

  test "should destroy help_center" do
    assert_difference('HelpCenter.count', -1) do
      delete :destroy, id: @help_center
    end

    assert_redirected_to help_centers_path
  end
end
