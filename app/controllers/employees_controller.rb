class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @employees = Employee.all
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
    @employee = Employee.new(employee_params)
    @employee.save
    respond_with(@employee)
  end

  def update
    @employee.update(employee_params)
    respond_with(@employee)
  end

  def destroy
    @employee.destroy
    respond_with(@employee)
  end

#Useless#def bool_to_glyphicon(boolean)
#Useless#   if boolean == 'yes'
#Useless#     return '<span class="glyphicon glyphicon-ok" aria-hidden="true">'
#Useless#   else
#Useless#     return '<span class="glyphicon glyphicon-remove" aria-hidden="true">'
#Useless#   end
#Useless#end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:is_active, :last_name, :first_name, :birthdate, :status, :profile_id)
    end
end