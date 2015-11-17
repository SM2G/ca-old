class Paper < ActiveRecord::Base
  VALID_CONTENT_TYPES = ['application/pdf', 'application/x-pdf']

  ## DSL
  ## ==============================
  has_attached_file :document_file

  ## Relationships
  ## ==============================
  belongs_to :document
  belongs_to :employee

  ## Validations
  ## ==============================
  validates :document_id, presence: true
  validates :employee_id, presence: true

  validates_attachment :document_file,  content_type: { content_type: [VALID_CONTENT_TYPES] },
                                        size:         { in: 0..1.megabyte }

  ## Callbacks
  ## ==============================
  before_validation do |paper|
    if ['application/octet-stream', 'binary/octet-stream'].include?(paper.document_file_content_type)
      mime_type = MIME::Types.type_for(paper.document_file_file_name)
      paper.document_file_content_type = mime_type.first.content_type if mime_type.first
    end
  end

  ## Scopes
  ## ==============================
  scope :for_profile,     -> (profile) { joins(document: :assignments).where(assignments: { profile_id: profile.id }) }
  scope :not_for_profile, -> (profile) { where.not(id: for_profile(profile)) }
end
