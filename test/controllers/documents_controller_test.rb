require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post :create, document: { name: @document.name, warning_days: @document.warning_days, critical_days: @document.critical_days, expire_days: @document.expire_days, warning_months: @document.warning_months, critical_months: @document.critical_months, expire_months: @document.expire_months}
    end

    assert_redirected_to document_path(assigns(:document))
  end

  test "should show document" do
    get :show, id: @document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document
    assert_response :success
  end

  test "should update document" do
    patch :update, id: @document, document: { critical_days: @document.critical_days, name: @document.name, expire_days: @document.expire_days, warning_days: @document.warning_days }
    assert_redirected_to document_path(assigns(:document))
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, id: @document
    end

    assert_redirected_to documents_path
  end
end
