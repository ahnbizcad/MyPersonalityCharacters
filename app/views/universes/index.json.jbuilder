json.array!(@universes) do |universe|
  json.extract! universe, :id
  json.url universe_url(universe, format: :json)
end
