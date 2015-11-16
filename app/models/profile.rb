class Profile < ActiveRecord::Base
  ## To Documents
  ## ==============================
  has_many :assignments
  has_many :documents, through: :assignments

  ## To Employees
  ## ==============================
  has_many :employees

  accepts_nested_attributes_for :documents

  def full_profile_naming
    "#{name} (#{id})"
  end
end
