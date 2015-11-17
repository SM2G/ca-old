module Profiles
  class DestroyService

    private

    attr_reader :profile

    public

    def initialize(profile)
      @profile = profile
    end

    def call
      return if has_employees?
      profile.destroy
    end

    private

    def has_employees?
      profile.employees.exists?
    end
  end
end
