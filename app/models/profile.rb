class Profile < ActiveRecord::Base
  ## To Documents
  ## ==============================
  has_many :assignments
  has_many :documents, through: :assignments

  ## To Employees
  ## ==============================
  has_many :employees

  def full_profile_naming
    "#{name} (#{id})"
  end
end
