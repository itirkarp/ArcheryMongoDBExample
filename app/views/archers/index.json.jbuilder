json.array!(@archers) do |archer|
  json.extract! archer, :name
  json.url archer_url(archer, format: :json)
end
