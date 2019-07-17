class RemoveItemRefFromSellers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sellers, :item, foreign_key: true
  end
end
