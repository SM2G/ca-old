class Document < ActiveRecord::Base
  ## Relationships
  ## ==============================
  has_many :assignments,  dependent: :destroy
  has_many :papers,       dependent: :destroy

  has_many :profiles, through: :assignments

  ## Structure
  ## ==============================
  validates :document_name,
    presence: true,
    length: { minimum: 2, maximum: 50 }
  validates :warning_days,
    presence: true,
    numericality: true
  validates :critical_days,
    presence: true,
    numericality: true
  validates :expire_days,
    presence: true,
    numericality: true

  def full_document_naming
    "#{document_name} (#{id})"
  end
end
