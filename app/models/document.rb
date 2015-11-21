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

  validate :warning_under_critical, :critical_under_expire

  def full_document_naming
    "#{name} (#{id})"
  end

  def warning_under_critical
    if warning_days > critical_days
      errors.add(:document, "Seuil Warning au dessus de Critical")
    end
  end

  def critical_under_expire
    if critical_days > expire_days
      errors.add(:document, "Seuil Critical au dessus de Expiré")
    end
  end
end
