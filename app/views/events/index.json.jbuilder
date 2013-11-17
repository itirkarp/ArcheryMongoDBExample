json.array!(@events) do |event|
  json.extract! event, :name, :date, :type
  json.url event_url(event, format: :json)
end
