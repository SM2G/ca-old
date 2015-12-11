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
  validates :name,          presence: true, length: { minimum: 2, maximum: 50 }
  validates :warning_days,  presence: true, numericality: true

  validate :critical_under_warning

  def full_document_naming
    "#{name} (#{id})"
  end

  def critical_under_warning
    if critical_days > warning_days
      errors.add(:critical_days, "Seuil critique au dessus du seuil alerte")
    end
  end
end
