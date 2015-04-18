require 'test_helper'

class FilterBoxesControllerTest < ActionController::TestCase
  setup do
    @filter_box = filter_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filter_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filter_box" do
    assert_difference('FilterBox.count') do
      post :create, filter_box: {  }
    end

    assert_redirected_to filter_box_path(assigns(:filter_box))
  end

  test "should show filter_box" do
    get :show, id: @filter_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filter_box
    assert_response :success
  end

  test "should update filter_box" do
    patch :update, id: @filter_box, filter_box: {  }
    assert_redirected_to filter_box_path(assigns(:filter_box))
  end

  test "should destroy filter_box" do
    assert_difference('FilterBox.count', -1) do
      delete :destroy, id: @filter_box
    end

    assert_redirected_to filter_boxes_path
  end
end
