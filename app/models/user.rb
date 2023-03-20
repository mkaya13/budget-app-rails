class User < ApplicationRecord
  has_many :groups, class_name: 'Group'
  has_many :payments, class_name: 'Payment'
end
