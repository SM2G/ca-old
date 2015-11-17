module Employees
  class CreateService

    private

    attr_reader :employee, :employee_saved, :params

    public

    def initialize(params)
      @params = params
    end

    def call
      create_employee
      return employee unless employee_saved

      create_papers
      employee
    end

    private

    def create_employee
      @employee       = Employee.new(params)
      @employee_saved = employee.save
    end

    def create_papers
      Employees::UpdatePapersService.new(employee).call
    end
  end
end
