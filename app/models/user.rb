class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable,
          :recoverable,
          :registerable,
          :rememberable,
          :trackable,
          :validatable

  has_many :documents,   dependent: :destroy
  has_many :profiles,    dependent: :destroy

  has_many :employees,   through: :profiles
  has_many :papers,      through: :employees
end
