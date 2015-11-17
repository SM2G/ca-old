module Documents
  class DestroyService

    private

    attr_reader :document

    public

    def initialize(document)
      @document = document
    end

    def call
      return if has_profiles?
      document.destroy
    end

    private

    def has_profiles?
      document.profiles.exists?
    end
  end
end
