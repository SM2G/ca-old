class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  include PapersHelper

  def index
    @employees = Employee.order(is_active: :desc, last_name: :asc)
    respond_with(@employees)
  end

  def show
    respond_with(@employee)
  end

  def new
    @employee = Employee.new
    respond_with(@employee)
  end

  def edit
  end

  def create
    @employee = Employees::CreateService.new(employee_params).call
    respond_with(@employee)
  end

  def update
    Employees::UpdateService.new(@employee, employee_params).call
    respond_with(@employee)
  end

  def destroy
    @employee.destroy
    respond_with(@employee)
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:is_active, :last_name, :first_name, :birthdate, :status, :profile_id)
  end
end
