class User < ApplicationRecord
  has_many :cards
  has_many :orders
  has_and_belongs_to_many :items
end
