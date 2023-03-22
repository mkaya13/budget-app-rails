class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :payments, dependent: :destroy

  validates :name, presence: true
  validates :user_id, presence: true

  validates :name, length: { minimum: 2, maximum: 50 }
  validates :icon, length: { minimum: 1, maximum: 10_000 }
  validates :icon, presence: true,
                   format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https data])}\z/,
                             message: 'must be a valid URL' }
end
