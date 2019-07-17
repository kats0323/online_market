class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :state
      t.float :postage
      t.text :region
      t.date :shipping_date
      t.float :price

      t.timestamps
    end
  end
end
