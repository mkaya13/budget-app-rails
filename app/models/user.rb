class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, class_name: 'Group'
  has_many :payments, class_name: 'Payment'

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  validates :name, length: { minimum: 2, maximum: 50 }
  validates :email, length: { minimum: 5, maximum: 70 }
  validates :password, length: { minimum: 8, maximum: 70 }

  # ROLES = %i[admin default].freeze

  def is?(requested_role)
    role == requested_role.to_s
  end
end
