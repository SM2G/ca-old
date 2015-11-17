module Employees
  class UpdatePapersService

    private

    attr_reader :employee

    public

    def initialize(employee)
      @employee = employee
    end

    def call
      ActiveRecord::Base.transaction do
        remove_old_profile_papers
        add_new_profile_papers
      end
    end

    private

    def remove_old_profile_papers
      old_papers = employee.papers.not_for_profile(employee.profile)
      old_papers.destroy_all
    end

    def add_new_profile_papers
      expiration_date      = Date.current - 1.day
      missing_document_ids = employee.profile.document_ids - employee.document_ids
      missing_documents    = Document.where(id: missing_document_ids)

      missing_documents.each do |document|
        employee.papers.create!(document: document, expiration_date: expiration_date)
      end
    end
  end
end
