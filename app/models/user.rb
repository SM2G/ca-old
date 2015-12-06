class User < ActiveRecord::Base
  extend Enumerize

  ## DSL
  ## ==============================
  devise  :database_authenticatable,
          :recoverable,
          :registerable,
          :rememberable,
          :trackable,
          :validatable

  enumerize :mail_notification_frequency, in: [:none, :daily, :weekly], default: :none
  enumerize :plan,                        in: Settings.plans.list.keys, default: Settings.plans.default

  ## Relationships
  ## ==============================
  has_many :documents,   dependent: :destroy
  has_many :profiles,    dependent: :destroy

  has_many :employees,   through: :profiles
  has_many :papers,      through: :employees
end
