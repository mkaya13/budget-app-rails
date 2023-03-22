class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :payments, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  validates :user_id, presence: true

  validates :name, length: { minimum: 2, maximum: 50 }
  validates :icon, length: { minimum: 1, maximum: 800 }
end
