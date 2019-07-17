class Seller < ApplicationRecord
  belongs_to :profile
  has_many :items
end
