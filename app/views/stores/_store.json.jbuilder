json.extract! store, :id, :title, :description, :price, :category, :colour, :created_at, :updated_at
json.url store_url(store, format: :json)
