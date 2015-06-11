class Employee < ActiveRecord::Base

## Bug
## ==========
# When first creating the db, employees#index results in bug.

  ## Relationships
  ## ==============================
  belongs_to :profile
  has_many :papers

  ## Validations
  ## ==============================
  validates :first_name,
    presence: true,
    length: {minimum:3, maximum: 30}
    validates :last_name,
    presence: true,
    length: {minimum:3, maximum: 30}

  def is_active?
    is_active.present?
  end


end
