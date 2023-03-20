class User < ApplicationRecord
  has_many :groups, class_name: 'Group'
  has_many :payments, class_name: 'Payment'

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 50 }

end
