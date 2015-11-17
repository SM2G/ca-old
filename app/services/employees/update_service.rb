module Employees
  class UpdateService

    private

    attr_reader :employee, :employee_saved, :params, :profile_changed

    public

    def initialize(employee, params)
      @employee = employee
      @params   = params
    end

    def call
      update_employee
      return unless employee_saved

      update_papers
    end

    private

    def assign_attributes
      employee.assign_attributes(params)
      @profile_changed = employee.profile_id_changed?
    end

    def save_employee
      @employee_saved = employee.save
    end

    def update_employee
      assign_attributes
      save_employee
    end

    def update_papers
      return unless profile_changed
      Employees::UpdatePapersService.new(employee).call
    end
  end
end
