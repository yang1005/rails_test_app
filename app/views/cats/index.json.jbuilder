json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :price
  json.url cat_url(cat, format: :json)
end
