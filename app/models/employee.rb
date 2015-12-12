class Employee < ActiveRecord::Base


  ## Relationships
  ## ==============================
  belongs_to :profile
  has_many :papers,     dependent: :destroy
  has_many :documents,  through: :papers

  ## Validations
  ## ==============================
  validates :first_name,  presence: true, length: { minimum:3, maximum: 30 }
  validates :last_name,   presence: true, length: { minimum:3, maximum: 30 }
  validates :profile_id,  presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
