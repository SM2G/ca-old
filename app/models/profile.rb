class Profile < ActiveRecord::Base
  belongs_to :user

  has_many   :assignments, dependent: :destroy
  has_many   :employees,   dependent: :nullify
  has_many   :documents,   through:   :assignments

  accepts_nested_attributes_for :documents

  def full_profile_naming
    "#{name} (#{id})"
  end
end
