json.extract! client, :id, :name, :address, :city, :state, :zip, :created_at, :updated_at
json.url client_url(client, format: :json)
