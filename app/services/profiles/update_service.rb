module Profiles
  class UpdateService

    private

    attr_reader :documents_changed, :params, :profile, :profile_saved

    public

    def initialize(profile, params)
      @params  = params
      @profile = profile
    end

    def call
      update_profile
      return unless profile_saved

      update_employees_papers
    end

    private

    def assign_attributes
      @documents_changed = document_ids_changed?
      profile.assign_attributes(params)
    end

    def document_ids_changed?
      document_id_params  = params[:document_ids].reject(&:blank?).map(&:to_i)
      common_document_ids = (document_id_params & profile.document_ids)

      common_document_ids.size != document_id_params.size
    end

    def update_employees_papers
      return unless documents_changed

      profile.employees.each do |employee|
        Employees::UpdatePapersService.new(employee).call
      end
    end

    def update_profile
      assign_attributes
      save_profile
    end

    def save_profile
      @profile_saved = profile.save
    end
  end
end
