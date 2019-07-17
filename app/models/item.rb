class Item < ApplicationRecord
    # validates :name, :state, :postage, :region ,:shipping_date,:price, {presence: true}
belongs_to :seller
has_many_attached :images
end
