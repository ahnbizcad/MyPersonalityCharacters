json.array!(@celebrities) do |celebrity|
  json.extract! celebrity, :id
  json.url celebrity_url(celebrity, format: :json)
end
