json.extract! location, :id, :latitude, :longitude, :adress, :description, :title, :created_at, :updated_at
json.url location_url(location, format: :json)
