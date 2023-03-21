class Payment < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups, class_name: 'Group'

  validates :name, presence: true
  # validates :amount, presence: true, numericality: { only_float: true }
  validates :user_id, presence: true, numericality: { only_integer: true }

  validates :name, length: { minimum: 2, maximum: 50 }
end
