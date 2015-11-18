class Document < ActiveRecord::Base
  ## Relationships
  ## ==============================
  belongs_to :user

  has_many   :assignments, dependent: :destroy
  has_many   :papers,      dependent: :destroy

  has_many   :profiles,    through:   :assignments

  ## Structure
  ## ==============================
  validates :critical_days, presence: true, numericality: true
  validates :expire_days,   presence: true, numericality: true
  validates :name,          presence: true, length: { minimum: 2, maximum: 50 }
  validates :warning_days,  presence: true, numericality: true

  def full_document_naming
    "#{name} (#{id})"
  end
end
