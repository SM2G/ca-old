class Document < ActiveRecord::Base

## Relationships
## ==============================
has_many :assignments
has_many :profiles, through: :assignments
has_many :paper

  
## Structure
## ==============================
validates :document_name,
    presence: true,
    length: { minimum: 2, maximum: 50 }
validates :warning_months,
    presence: true,
    numericality: true
  validates :warning_days,
    presence: true,
    numericality: true
  validates :critical_months,
    presence: true,
    numericality: true
  validates :critical_days,
    presence: true,
    numericality: true
validates :expire_months,
    presence: true,
    numericality: true
  validates :expire_days,
    presence: true,
    numericality: true

  def full_document_naming
    "#{document_name} (#{id})"
  end
end
