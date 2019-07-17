json.extract! item, :id, :name, :image, :state, :postage, :region, :shipping_date, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
