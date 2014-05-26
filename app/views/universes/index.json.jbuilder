json.array!(@universes) do |universe|
  json.extract! universe, :id, :name, :characters
  json.url universe_url(universe, format: :json)
end
