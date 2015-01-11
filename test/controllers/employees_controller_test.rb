require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { birthdate: @employee.birthdate, employee_id: @employee.employee_id, first_name: @employee.first_name, is_active: @employee.is_active, is_cyno: @employee.is_cyno, is_default: @employee.is_default, is_xray: @employee.is_xray, last_name: @employee.last_name, status: @employee.status }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { birthdate: @employee.birthdate, employee_id: @employee.employee_id, first_name: @employee.first_name, is_active: @employee.is_active, is_cyno: @employee.is_cyno, is_default: @employee.is_default, is_xray: @employee.is_xray, last_name: @employee.last_name, status: @employee.status }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
