class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profiles, only: [:new, :create, :edit, :update]
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  include PapersHelper

  def index
    @employees = current_user.employees.order(is_active: :desc, last_name: :asc)
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
    @employee = current_user.employees.find(params[:id])
  end

  def set_profiles
    @profiles = current_user.profiles
  end

  def employee_params
    profile         = @profiles.find(params[:employee][:profile_id])
    employee_params = params.require(:employee).permit(
      :birthdate,
      :first_name,
      :is_active,
      :last_name,
      :status
    )

    employee_params[:profile_id] = profile.id

    employee_params
  end
end
