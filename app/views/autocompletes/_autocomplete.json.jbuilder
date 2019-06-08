json.extract! autocomplete, :id, :address, :street_number, :locality, :route, :administrative_area_level_1, :country, :postal_code, :created_at, :updated_at
json.url autocomplete_url(autocomplete, format: :json)
